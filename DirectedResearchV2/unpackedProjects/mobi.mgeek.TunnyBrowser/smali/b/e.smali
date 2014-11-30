.class public Lb/e;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/c",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lb/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lb/e;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    new-instance v0, Lb/m;

    invoke-direct {v0, v1}, Lb/m;-><init>(Lb/f;)V

    sput-object v0, Lb/e;->c:Ljava/util/concurrent/Executor;

    .line 46
    new-instance v0, Lb/o;

    invoke-direct {v0, v1}, Lb/o;-><init>(Lb/f;)V

    sput-object v0, Lb/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/e;->d:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/e;->i:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lb/e",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Lb/n;->b(Ljava/lang/Exception;)V

    .line 142
    invoke-virtual {v0}, Lb/n;->a()Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lb/e",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Lb/n;->b(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0}, Lb/n;->a()Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lb/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/e",
            "<TTResult;>.b/n;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lb/e;

    invoke-direct {v0}, Lb/e;-><init>()V

    .line 67
    new-instance v1, Lb/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lb/n;-><init>(Lb/e;Lb/f;)V

    return-object v1
.end method

.method static synthetic a(Lb/e;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lb/e;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lb/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lb/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lb/e;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Lb/e;->c(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lb/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lb/e;->e:Z

    return p1
.end method

.method static synthetic b(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Lb/e;->d(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lb/e;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lb/e;->e:Z

    return v0
.end method

.method static synthetic b(Lb/e;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lb/e;->f:Z

    return p1
.end method

.method static synthetic c(Lb/e;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lb/e;->h()V

    return-void
.end method

.method private static c(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/e",
            "<TTContinuationResult;>.b/n;",
            "Lb/c",
            "<TTResult;TTContinuationResult;>;",
            "Lb/e",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lb/l;

    invoke-direct {v0, p1, p2, p0}, Lb/l;-><init>(Lb/c;Lb/e;Lb/n;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method private static d(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/e",
            "<TTContinuationResult;>.b/n;",
            "Lb/c",
            "<TTResult;",
            "Lb/e",
            "<TTContinuationResult;>;>;",
            "Lb/e",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lb/g;

    invoke-direct {v0, p1, p2, p0}, Lb/g;-><init>(Lb/c;Lb/e;Lb/n;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method

.method public static g()Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/e",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lb/n;->c()V

    .line 151
    invoke-virtual {v0}, Lb/n;->a()Lb/e;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lb/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :try_start_1
    invoke-interface {v0, p0}, Lb/c;->then(Lb/e;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    :try_start_2
    throw v0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 512
    :catch_1
    move-exception v0

    .line 513
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 516
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/e;->i:Ljava/util/List;

    .line 517
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    return-void
.end method


# virtual methods
.method public a(Lb/c;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c",
            "<TTResult;TTContinuationResult;>;)",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lb/e;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lb/e;->a(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 302
    .line 303
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lb/e;->b()Z

    move-result v2

    .line 306
    if-nez v2, :cond_0

    .line 307
    iget-object v3, p0, Lb/e;->i:Ljava/util/List;

    new-instance v4, Lb/i;

    invoke-direct {v4, p0, v0, p1, p2}, Lb/i;-><init>(Lb/e;Lb/n;Lb/c;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-eqz v2, :cond_1

    .line 317
    invoke-static {v0, p1, p0, p2}, Lb/e;->c(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V

    .line 319
    :cond_1
    invoke-virtual {v0}, Lb/n;->a()Lb/e;

    move-result-object v0

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lb/c;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c",
            "<TTResult;TTContinuationResult;>;)",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 392
    sget-object v0, Lb/e;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lb/e;->c(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c",
            "<TTResult;",
            "Lb/e",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 337
    .line 338
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lb/e;->b()Z

    move-result v2

    .line 341
    if-nez v2, :cond_0

    .line 342
    iget-object v3, p0, Lb/e;->i:Ljava/util/List;

    new-instance v4, Lb/j;

    invoke-direct {v4, p0, v0, p1, p2}, Lb/j;-><init>(Lb/e;Lb/n;Lb/c;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-eqz v2, :cond_1

    .line 352
    invoke-static {v0, p1, p0, p2}, Lb/e;->d(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V

    .line 354
    :cond_1
    invoke-virtual {v0}, Lb/n;->a()Lb/e;

    move-result-object v0

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lb/e;->e:Z

    monitor-exit v1

    return v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Lb/k;

    invoke-direct {v0, p0, p1}, Lb/k;-><init>(Lb/e;Lb/c;)V

    invoke-virtual {p0, v0, p2}, Lb/e;->b(Lb/c;Ljava/util/concurrent/Executor;)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lb/e;->f:Z

    monitor-exit v1

    return v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lb/e;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lb/e;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lb/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lb/e;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
