.class public Lorg/b/b/a;
.super Lorg/b/c/a;
.source "BayeuxClient.java"


# instance fields
.field private final b:Lorg/slf4j/Logger;

.field private final c:Lorg/b/b/a/k;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/b/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lorg/b/b/a/d;

.field private final h:Lorg/b/b/a/j;

.field private final i:Lorg/b/b/a/j;

.field private final j:Lorg/b/b/a/j;

.field private final k:Lorg/b/b/a/j;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile n:Z

.field private volatile o:J

.field private volatile p:J

.field private q:I

.field private r:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lorg/b/b/a/a;[Lorg/b/b/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Lorg/b/c/a;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/b/b/a;->b:Lorg/slf4j/Logger;

    .line 103
    new-instance v0, Lorg/b/b/a/k;

    invoke-direct {v0}, Lorg/b/b/a/k;-><init>()V

    iput-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/b/b/a;->d:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/b/b/a;->f:Ljava/util/List;

    .line 107
    new-instance v0, Lorg/b/b/a/e;

    invoke-direct {v0}, Lorg/b/b/a/e;-><init>()V

    iput-object v0, p0, Lorg/b/b/a;->g:Lorg/b/b/a/d;

    .line 108
    new-instance v0, Lorg/b/b/x;

    invoke-direct {v0, p0, v4}, Lorg/b/b/x;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    iput-object v0, p0, Lorg/b/b/a;->h:Lorg/b/b/a/j;

    .line 109
    new-instance v0, Lorg/b/b/p;

    invoke-direct {v0, p0, v4}, Lorg/b/b/p;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    iput-object v0, p0, Lorg/b/b/a;->i:Lorg/b/b/a/j;

    .line 110
    new-instance v0, Lorg/b/b/t;

    invoke-direct {v0, p0, v4}, Lorg/b/b/t;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    iput-object v0, p0, Lorg/b/b/a;->j:Lorg/b/b/a/j;

    .line 111
    new-instance v0, Lorg/b/b/aa;

    invoke-direct {v0, p0, v4}, Lorg/b/b/aa;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    iput-object v0, p0, Lorg/b/b/a;->k:Lorg/b/b/a/j;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/b/b/a;->l:Ljava/util/Map;

    .line 147
    if-nez p3, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transport cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p2, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 152
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {v0, p3}, Lorg/b/b/a/k;->a(Lorg/b/b/a/a;)V

    .line 153
    array-length v1, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p4, v0

    .line 154
    iget-object v3, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {v3, v2}, Lorg/b/b/a/k;->a(Lorg/b/b/a/a;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {v0}, Lorg/b/b/a/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {v1, v0}, Lorg/b/b/a/k;->a(Ljava/lang/String;)Lorg/b/b/a/a;

    move-result-object v1

    .line 159
    instance-of v0, v1, Lorg/b/b/a/i;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 161
    check-cast v0, Lorg/b/b/a/i;

    iget-object v3, p0, Lorg/b/b/a;->k:Lorg/b/b/a/j;

    invoke-interface {v0, v3}, Lorg/b/b/a/i;->a(Lorg/b/b/a/j;)V

    .line 163
    :cond_3
    instance-of v0, v1, Lorg/b/b/a/b;

    if-eqz v0, :cond_2

    .line 165
    check-cast v1, Lorg/b/b/a/b;

    .line 166
    invoke-virtual {v1, p1}, Lorg/b/b/a/b;->c(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/b/b/a;->g:Lorg/b/b/a/d;

    invoke-virtual {v1, v0}, Lorg/b/b/a/b;->a(Lorg/b/b/a/d;)V

    goto :goto_1

    .line 171
    :cond_4
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/b/b/v;

    invoke-direct {v1, p0, v4, v4}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/b/b/a/a;[Lorg/b/b/a/a;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/b/b/a;-><init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lorg/b/b/a/a;[Lorg/b/b/a/a;)V

    .line 134
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 767
    .line 768
    if-eqz p1, :cond_0

    const-string v0, "reconnect"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "reconnect"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    .line 770
    :cond_0
    return-object p2
.end method

.method static synthetic a(Lorg/b/b/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/b/b/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/b/b/a;)Lorg/b/b/a/k;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    return-object v0
.end method

.method static synthetic a(Lorg/b/b/a;Lorg/b/b/o;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    return-void
.end method

.method private a(Lorg/b/b/o;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1022
    monitor-enter p0

    .line 1024
    :try_start_0
    iget v0, p0, Lorg/b/b/a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/b/b/a;->q:I

    .line 1025
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1030
    const/4 v2, 0x0

    .line 1031
    :try_start_1
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    move-object v3, v0

    move-object v0, v2

    move v2, v1

    .line 1033
    :goto_0
    if-nez v2, :cond_2

    .line 1035
    invoke-virtual {p1, v3}, Lorg/b/b/o;->a(Lorg/b/b/n;)Lorg/b/b/n;

    move-result-object v1

    .line 1036
    if-nez v1, :cond_1

    .line 1037
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-enter p0

    .line 1066
    :try_start_2
    iget v1, p0, Lorg/b/b/a;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/b/b/a;->q:I

    .line 1067
    iget v1, p0, Lorg/b/b/a;->q:I

    if-nez v1, :cond_0

    .line 1068
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1069
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    throw v0

    .line 1025
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1039
    :cond_1
    :try_start_4
    invoke-virtual {v3, v1}, Lorg/b/b/n;->a(Lorg/b/b/n;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1041
    const-string v0, "State not updateable: {} -> {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {p0, v0, v4}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1051
    :cond_2
    invoke-virtual {p1}, Lorg/b/b/o;->a()V

    .line 1053
    if-eqz v2, :cond_4

    .line 1055
    invoke-virtual {v3}, Lorg/b/b/n;->c()Lorg/b/b/ac;

    move-result-object v1

    invoke-virtual {v0}, Lorg/b/b/n;->c()Lorg/b/b/ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/b/ac;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1056
    invoke-virtual {v3}, Lorg/b/b/n;->c()Lorg/b/b/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/b/b/n;->a(Lorg/b/b/ac;)V

    .line 1058
    :cond_3
    invoke-virtual {v0}, Lorg/b/b/n;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1064
    :cond_4
    monitor-enter p0

    .line 1066
    :try_start_5
    iget v0, p0, Lorg/b/b/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/b/b/a;->q:I

    .line 1067
    iget v0, p0, Lorg/b/b/a;->q:I

    if-nez v0, :cond_5

    .line 1068
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1069
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1071
    return-void

    .line 1045
    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1046
    const-string v4, "State update: {} -> {}{}"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v5, v0

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v6, 0x2

    if-eqz v2, :cond_7

    const-string v0, ""

    :goto_1
    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    if-nez v2, :cond_8

    .line 1048
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_0

    .line 1046
    :cond_7
    const-string v0, " failed (concurrent update)"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1069
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Runnable;JJ)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 798
    iget-object v3, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 799
    if-eqz v3, :cond_0

    .line 803
    add-long v4, p2, p4

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return v0

    .line 806
    :catch_0
    move-exception v2

    .line 809
    iget-object v4, p0, Lorg/b/b/a;->b:Lorg/slf4j/Logger;

    const-string v5, ""

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    :cond_0
    const-string v2, "Could not schedule action {} to scheduler {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {p0, v2, v4}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 813
    goto :goto_0
.end method

.method static synthetic a(Lorg/b/b/a;Lorg/b/a/e;)Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/b/b/a;->g(Lorg/b/a/e;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lorg/b/b/a;Lorg/b/b/n;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/b/b/a;->c(Lorg/b/b/n;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lorg/b/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/b/b/a;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lorg/b/b/a;Lorg/b/b/n;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/b/b/a;->d(Lorg/b/b/n;)Z

    move-result v0

    return v0
.end method

.method private b(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lorg/b/b/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/b/b/a;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lorg/b/b/a;Lorg/b/b/n;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/b/b/a;->e(Lorg/b/b/n;)Z

    move-result v0

    return v0
.end method

.method private c(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lorg/b/b/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/b/b/a;->t()V

    return-void
.end method

.method private d(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lorg/b/b/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/b/b/a;->t()V

    return-void
.end method

.method private e(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lorg/b/b/a;)Lorg/b/b/a/j;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/b/b/a;->j:Lorg/b/b/a/j;

    return-object v0
.end method

.method private f(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()[Lorg/b/a/e;
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lorg/b/b/a;->f:Ljava/util/List;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v0, p0, Lorg/b/b/a;->f:Ljava/util/List;

    iget-object v2, p0, Lorg/b/b/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/b/a/e;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/a/e;

    .line 507
    iget-object v2, p0, Lorg/b/b/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 508
    monitor-exit v1

    .line 509
    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lorg/b/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    invoke-direct {p0, v0}, Lorg/b/b/a;->b(Lorg/b/b/n;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/b/b/a;->o:J

    return-wide v0
.end method

.method protected a(Ljava/lang/String;)Lorg/b/a/c;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lorg/b/b/a;->r()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/c;

    .line 461
    if-nez v0, :cond_0

    new-instance v0, Lorg/b/a/c;

    invoke-direct {v0, p1}, Lorg/b/a/c;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/b/c/c;->a()Lorg/b/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/b/a/c;)Lorg/b/c/c;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lorg/b/b/m;

    invoke-direct {v0, p0, p1}, Lorg/b/b/m;-><init>(Lorg/b/b/a;Lorg/b/a/c;)V

    return-object v0
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lorg/b/b/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/b/b/a;->b:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    :cond_0
    return-void
.end method

.method protected varargs a(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 948
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p2, v1

    .line 950
    invoke-virtual {p0}, Lorg/b/b/a;->p()Lorg/b/a/e;

    move-result-object v4

    .line 951
    invoke-interface {v0}, Lorg/b/a/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/b/a/e;->c(Ljava/lang/String;)V

    .line 952
    invoke-interface {v4, v2}, Lorg/b/a/e;->b(Z)V

    .line 953
    invoke-interface {v0}, Lorg/b/a/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/b/a/e;->a(Ljava/lang/String;)V

    .line 954
    const-string v5, "org.cometd.client.publishCallback"

    const-string v6, "org.cometd.client.publishCallback"

    invoke-interface {v0, v6}, Lorg/b/a/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 957
    const-string v6, "failure"

    invoke-interface {v4, v6, v5}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v6, "message"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    if-eqz p1, :cond_0

    .line 960
    const-string v0, "exception"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_0
    instance-of v0, p1, Lorg/b/c/p;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 962
    check-cast v0, Lorg/b/c/p;

    invoke-virtual {v0}, Lorg/b/c/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 963
    :cond_1
    const-string v0, "connectionType"

    invoke-virtual {p0}, Lorg/b/b/a;->l()Lorg/b/b/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lorg/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-virtual {p0, v4}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 948
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 967
    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 307
    invoke-virtual {p0}, Lorg/b/b/a;->n()V

    .line 309
    invoke-virtual {p0}, Lorg/b/b/a;->k()Ljava/util/List;

    move-result-object v1

    .line 311
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Lorg/b/b/a/k;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/a/a;

    .line 312
    invoke-virtual {v0}, Lorg/b/b/a/a;->a()V

    .line 313
    const-string v2, "Using initial transport {} from {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    new-instance v1, Lorg/b/b/b;

    invoke-direct {v1, p0, p1, v0}, Lorg/b/b/b;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;)V

    invoke-direct {p0, v1}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 322
    return-void
.end method

.method protected a(Lorg/b/a/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    const-string v0, "Processing meta handshake {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-interface {p1}, Lorg/b/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    const-string v0, "supportedConnectionTypes"

    invoke-interface {p1, v0}, Lorg/b/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 612
    :goto_0
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/b/b/a/k;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 614
    :goto_1
    if-nez v0, :cond_2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "405:c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/b/b/a;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":no transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-interface {p1, v3}, Lorg/b/a/e;->b(Z)V

    .line 624
    const-string v1, "error"

    invoke-interface {p1, v1, v0}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v0, Lorg/b/b/g;

    invoke-direct {v0, p0, p1}, Lorg/b/b/g;-><init>(Lorg/b/b/a;Lorg/b/a/e;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 689
    :goto_2
    return-void

    .line 611
    :cond_0
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    .line 613
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/a/a;

    goto :goto_1

    .line 643
    :cond_2
    new-instance v1, Lorg/b/b/h;

    invoke-direct {v1, p0, v0, p1}, Lorg/b/b/h;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/a/e;)V

    invoke-direct {p0, v1}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    goto :goto_2

    .line 670
    :cond_3
    new-instance v0, Lorg/b/b/i;

    invoke-direct {v0, p0, p1}, Lorg/b/b/i;-><init>(Lorg/b/b/a;Lorg/b/a/e;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    goto :goto_2
.end method

.method public a([Lorg/b/a/d;)V
    .locals 0

    .prologue
    .line 992
    return-void
.end method

.method protected a(JJ)Z
    .locals 6

    .prologue
    .line 775
    new-instance v1, Lorg/b/b/c;

    invoke-direct {v1, p0}, Lorg/b/b/c;-><init>(Lorg/b/b/a;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/b/b/a;->a(Ljava/lang/Runnable;JJ)Z

    move-result v0

    return v0
.end method

.method protected varargs a([Lorg/b/a/e;)Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    .line 482
    invoke-direct {p0, v0}, Lorg/b/b/a;->c(Lorg/b/b/n;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/b/b/a;->d(Lorg/b/b/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    :cond_0
    iget-object v1, p0, Lorg/b/b/a;->k:Lorg/b/b/a/j;

    invoke-virtual {v0, v1, p1}, Lorg/b/b/n;->a(Lorg/b/b/a/j;[Lorg/b/a/e;)V

    .line 485
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    .line 489
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/b/b/a;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 490
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/b/b/a;->p:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lorg/b/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 3

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/b/b/a;->b:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Messages failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1015
    return-void
.end method

.method protected b(Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 701
    const-string v0, "Processing meta connect {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    new-instance v0, Lorg/b/b/j;

    invoke-direct {v0, p0, p1}, Lorg/b/b/j;-><init>(Lorg/b/b/a;Lorg/b/a/e;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 738
    return-void
.end method

.method protected b(JJ)Z
    .locals 6

    .prologue
    .line 786
    new-instance v1, Lorg/b/b/d;

    invoke-direct {v1, p0}, Lorg/b/b/d;-><init>(Lorg/b/b/a;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/b/b/a;->a(Ljava/lang/Runnable;JJ)Z

    move-result v0

    return v0
.end method

.method protected c(Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 742
    const-string v0, "Processing meta disconnect {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    new-instance v0, Lorg/b/b/k;

    invoke-direct {v0, p0, p1}, Lorg/b/b/k;-><init>(Lorg/b/b/a;Lorg/b/a/e;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 757
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    invoke-direct {p0, v0}, Lorg/b/b/a;->d(Lorg/b/b/n;)Z

    move-result v0

    return v0
.end method

.method protected d(Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 761
    const-string v0, "Processing message {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {p0, p1}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 763
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    .line 289
    invoke-direct {p0, v0}, Lorg/b/b/a;->e(Lorg/b/b/n;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/b/b/a;->f(Lorg/b/b/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lorg/b/b/ac;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    iget-object v0, v0, Lorg/b/b/n;->b:Lorg/b/b/ac;

    return-object v0
.end method

.method protected e(Lorg/b/a/e;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 926
    invoke-direct {p0}, Lorg/b/b/a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    new-array v0, v4, [Lorg/b/a/e;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lorg/b/b/a;->a([Lorg/b/a/e;)Z

    move-result v0

    .line 929
    const-string v1, "{} message {}"

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "Sent"

    :goto_0
    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    :goto_1
    return-void

    .line 929
    :cond_0
    const-string v0, "Failed"

    goto :goto_0

    .line 933
    :cond_1
    iget-object v1, p0, Lorg/b/b/a;->f:Ljava/util/List;

    monitor-enter v1

    .line 935
    :try_start_0
    iget-object v0, p0, Lorg/b/b/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    const-string v0, "Enqueued message {} (batching: {})"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lorg/b/b/a;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 936
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected f(Lorg/b/a/e;)V
    .locals 2

    .prologue
    .line 972
    const-string v0, "org.cometd.client.publishCallback"

    invoke-interface {p1, v0}, Lorg/b/a/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/e;

    .line 973
    invoke-interface {p1}, Lorg/b/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    invoke-interface {p1}, Lorg/b/a/e;->h()Ljava/lang/String;

    move-result-object v1

    .line 976
    if-nez v1, :cond_1

    .line 977
    :goto_0
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0, v0, p1}, Lorg/b/b/a;->a(Lorg/b/a/a/e;Lorg/b/a/e;)V

    .line 980
    :cond_0
    invoke-super {p0, p1}, Lorg/b/c/a;->f(Lorg/b/a/e;)V

    .line 981
    return-void

    .line 976
    :cond_1
    iget-object v0, p0, Lorg/b/b/a;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/e;

    goto :goto_0
.end method

.method protected f()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    .line 360
    invoke-direct {p0, v0}, Lorg/b/b/a;->b(Lorg/b/b/n;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p0}, Lorg/b/b/a;->p()Lorg/b/a/e;

    move-result-object v4

    .line 363
    iget-object v1, v0, Lorg/b/b/n;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, v0, Lorg/b/b/n;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Lorg/b/a/e;->putAll(Ljava/util/Map;)V

    .line 365
    :cond_0
    const-string v1, "/meta/handshake"

    invoke-interface {v4, v1}, Lorg/b/a/e;->a(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {p0}, Lorg/b/b/a;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "1.0"

    invoke-virtual {v1, v5, v6}, Lorg/b/b/a/k;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 367
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/b/a/a;

    .line 369
    invoke-virtual {v1}, Lorg/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_1
    const-string v1, "supportedConnectionTypes"

    invoke-interface {v4, v1, v5}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "version"

    const-string v5, "1.0"

    invoke-interface {v4, v1, v5}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "Handshaking with extra fields {}, transport {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/b/b/n;->c:Ljava/util/Map;

    aput-object v6, v5, v3

    iget-object v6, v0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    aput-object v6, v5, v2

    invoke-virtual {p0, v1, v5}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lorg/b/b/a;->h:Lorg/b/b/a/j;

    new-array v5, v2, [Lorg/b/a/e;

    aput-object v4, v5, v3

    invoke-virtual {v0, v1, v5}, Lorg/b/b/n;->a(Lorg/b/b/a/j;[Lorg/b/a/e;)V

    move v0, v2

    .line 377
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method protected g()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    .line 440
    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/n;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    invoke-virtual {p0}, Lorg/b/b/a;->p()Lorg/b/a/e;

    move-result-object v3

    .line 443
    const-string v4, "/meta/connect"

    invoke-interface {v3, v4}, Lorg/b/a/e;->a(Ljava/lang/String;)V

    .line 444
    const-string v4, "connectionType"

    iget-object v5, v0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-virtual {v5}, Lorg/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-direct {p0, v0}, Lorg/b/b/a;->c(Lorg/b/b/n;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v5, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    if-ne v4, v5, :cond_1

    .line 448
    :cond_0
    invoke-interface {v3, v1}, Lorg/b/a/e;->a(Z)Ljava/util/Map;

    move-result-object v4

    const-string v5, "timeout"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    const-string v4, "Connecting, transport {}"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v4, p0, Lorg/b/b/a;->i:Lorg/b/b/a/j;

    new-array v5, v1, [Lorg/b/a/e;

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/b/b/n;->a(Lorg/b/b/a/j;[Lorg/b/a/e;)V

    move v0, v1

    .line 454
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 471
    invoke-direct {p0}, Lorg/b/b/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0}, Lorg/b/b/a;->u()[Lorg/b/a/e;

    move-result-object v0

    .line 474
    array-length v1, v0

    if-lez v1, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Lorg/b/b/a;->a([Lorg/b/a/e;)Z

    .line 477
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 517
    new-instance v0, Lorg/b/b/e;

    invoke-direct {v0, p0}, Lorg/b/b/e;-><init>(Lorg/b/b/a;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 529
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 596
    new-instance v0, Lorg/b/b/f;

    invoke-direct {v0, p0}, Lorg/b/b/f;-><init>(Lorg/b/b/a;)V

    invoke-direct {p0, v0}, Lorg/b/b/a;->a(Lorg/b/b/o;)V

    .line 603
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lorg/b/b/a;->c:Lorg/b/b/a/k;

    invoke-virtual {v0}, Lorg/b/b/a/k;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Lorg/b/b/a/a;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lorg/b/b/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/n;

    .line 834
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lorg/b/b/a;->r:Z

    return v0
.end method

.method protected n()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 863
    const-string v0, "backoffIncrement"

    invoke-virtual {p0, v0}, Lorg/b/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 864
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 865
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 866
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/b/a;->o:J

    .line 868
    const-string v0, "maxBackoff"

    invoke-virtual {p0, v0}, Lorg/b/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 869
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 870
    :cond_2
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 871
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/b/a;->p:J

    .line 873
    iget-object v0, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_4

    .line 875
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/b/a;->n:Z

    .line 878
    :cond_4
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-direct {p0}, Lorg/b/b/a;->u()[Lorg/b/a/e;

    move-result-object v0

    .line 883
    invoke-virtual {p0, v1, v0}, Lorg/b/b/a;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 885
    iget-object v0, p0, Lorg/b/b/a;->g:Lorg/b/b/a/d;

    invoke-interface {v0}, Lorg/b/b/a/d;->b()V

    .line 887
    iget-boolean v0, p0, Lorg/b/b/a;->n:Z

    if-eqz v0, :cond_0

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/b/a;->n:Z

    .line 890
    iget-object v0, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 892
    iput-object v1, p0, Lorg/b/b/a;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 894
    :cond_0
    return-void
.end method

.method protected p()Lorg/b/a/e;
    .locals 1

    .prologue
    .line 921
    new-instance v0, Lorg/b/c/f;

    invoke-direct {v0}, Lorg/b/c/f;-><init>()V

    return-object v0
.end method
