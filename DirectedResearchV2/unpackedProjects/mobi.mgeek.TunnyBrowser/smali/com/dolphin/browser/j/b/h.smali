.class public Lcom/dolphin/browser/j/b/h;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolphin/browser/j/b/o;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/j/b/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/dolphin/browser/j/b/d;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/dolphin/browser/j/b/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/j/b/i;-><init>(Lcom/dolphin/browser/j/b/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->a:Ljava/util/concurrent/ThreadFactory;

    .line 147
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->b:Ljava/util/concurrent/BlockingQueue;

    .line 150
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x10

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/dolphin/browser/j/b/h;->b:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/dolphin/browser/j/b/h;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->c:Ljava/util/concurrent/Executor;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->f:Ljava/lang/Object;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/j/b/i;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/j/b/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/j/b/h;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/j/b/j;->a()Lcom/dolphin/browser/j/b/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/j/b/o;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/dolphin/browser/j/b/h;->b(Lcom/dolphin/browser/j/b/o;)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/j/b/l;

    .line 223
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/j/b/l;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/j/b/o;Ljava/security/cert/X509Certificate;Z)V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/dolphin/browser/j/b/h;->b(Lcom/dolphin/browser/j/b/o;)Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/j/b/l;

    .line 230
    invoke-virtual {v0, p2, p3}, Lcom/dolphin/browser/j/b/l;->a(Ljava/security/cert/X509Certificate;Z)V

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method private b()Lcom/dolphin/browser/j/b/d;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->e:Lcom/dolphin/browser/j/b/d;

    if-nez v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/j/b/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->e:Lcom/dolphin/browser/j/b/d;

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lcom/dolphin/browser/j/b/d;->a()Lcom/dolphin/browser/j/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/j/b/h;->e:Lcom/dolphin/browser/j/b/d;

    .line 215
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->e:Lcom/dolphin/browser/j/b/d;

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/dolphin/browser/j/b/o;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/j/b/o;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/j/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    monitor-exit v1

    .line 240
    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Lcom/dolphin/browser/j/b/o;)V
    .locals 7

    .prologue
    .line 191
    const-string v0, "verifySiteCertificateRevocation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/j/b/h;->b()Lcom/dolphin/browser/j/b/d;

    move-result-object v0

    .line 194
    iget-object v2, p1, Lcom/dolphin/browser/j/b/o;->a:Ljava/lang/String;

    iget v3, p1, Lcom/dolphin/browser/j/b/o;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/j/b/d;->a(Ljava/lang/String;I)Lcom/dolphin/browser/j/b/q;

    move-result-object v0

    .line 195
    iget-boolean v2, v0, Lcom/dolphin/browser/j/b/q;->b:Z

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "SiteCertRevocationValidator"

    const-string v3, "%s: revoked."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/dolphin/browser/j/b/q;->a:Ljava/security/cert/X509Certificate;

    invoke-static {v6}, Lcom/dolphin/browser/j/b/c;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    :goto_0
    iget-object v2, v0, Lcom/dolphin/browser/j/b/q;->a:Ljava/security/cert/X509Certificate;

    iget-boolean v0, v0, Lcom/dolphin/browser/j/b/q;->b:Z

    invoke-direct {p0, p1, v2, v0}, Lcom/dolphin/browser/j/b/h;->a(Lcom/dolphin/browser/j/b/o;Ljava/security/cert/X509Certificate;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 207
    :goto_1
    return-void

    .line 198
    :cond_0
    :try_start_1
    const-string v2, "SiteCertRevocationValidator"

    const-string v3, "%s: success."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/dolphin/browser/j/b/q;->a:Ljava/security/cert/X509Certificate;

    invoke-static {v6}, Lcom/dolphin/browser/j/b/c;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/j/b/h;->a(Lcom/dolphin/browser/j/b/o;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;)V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/j/b/h;->a(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;Landroid/os/Handler;)V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 167
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v1, Lcom/dolphin/browser/j/b/o;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/j/b/o;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    if-eqz v0, :cond_2

    .line 175
    if-eqz p2, :cond_1

    .line 176
    new-instance v1, Lcom/dolphin/browser/j/b/l;

    invoke-direct {v1, p1, p2, p3}, Lcom/dolphin/browser/j/b/l;-><init>(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 180
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    if-eqz p2, :cond_3

    .line 182
    new-instance v3, Lcom/dolphin/browser/j/b/l;

    invoke-direct {v3, p1, p2, p3}, Lcom/dolphin/browser/j/b/l;-><init>(Ljava/lang/String;Lcom/dolphin/browser/j/b/k;Landroid/os/Handler;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    iget-object v3, p0, Lcom/dolphin/browser/j/b/h;->d:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/j/b/h;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/dolphin/browser/j/b/p;

    invoke-direct {v3, p0, v1}, Lcom/dolphin/browser/j/b/p;-><init>(Lcom/dolphin/browser/j/b/h;Lcom/dolphin/browser/j/b/o;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
