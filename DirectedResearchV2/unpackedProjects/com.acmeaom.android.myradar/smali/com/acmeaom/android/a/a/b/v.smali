.class Lcom/acmeaom/android/a/a/b/v;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/a/b/s;

.field private b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/acmeaom/android/a/a/b/s;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/v;->a:Lcom/acmeaom/android/a/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/v;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/a/a/b/s;Lcom/acmeaom/android/a/a/b/t;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/a/b/v;-><init>(Lcom/acmeaom/android/a/a/b/s;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/v;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/acmeaom/android/a/a/b/v;Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/a/a/b/v;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/a/b/v;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/a/b/v;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 39
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v2, v2, Lcom/acmeaom/android/a/a/b/w;

    if-eqz v2, :cond_0

    .line 40
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/acmeaom/android/a/a/b/w;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/w;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/acmeaom/android/a/a/b/u;)V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 51
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_1
    monitor-exit p0

    return-void
.end method
