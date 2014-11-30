.class final Lcom/google/android/gms/common/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/t",
            "<*>;>;"
        }
    .end annotation
.end field

.field final b:Landroid/os/Handler;

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/common/api/h;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Lcom/google/android/gms/internal/ao;

.field private h:Lcom/google/android/gms/common/a;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private final o:Landroid/os/Bundle;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/c",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private final r:Lcom/google/android/gms/common/api/r;

.field private final s:Lcom/google/android/gms/internal/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/ee;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a;",
            "Lcom/google/android/gms/common/api/f;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/h;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/i;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    iput v1, p0, Lcom/google/android/gms/common/api/m;->k:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/m;->l:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/m;->n:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->o:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/n;-><init>(Lcom/google/android/gms/common/api/m;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->r:Lcom/google/android/gms/common/api/r;

    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/api/m;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/common/api/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/m;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->s:Lcom/google/android/gms/internal/aq;

    new-instance v0, Lcom/google/android/gms/internal/ao;

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->s:Lcom/google/android/gms/internal/aq;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ao;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/aq;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    new-instance v0, Lcom/google/android/gms/common/api/s;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/s;-><init>(Lcom/google/android/gms/common/api/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/os/Handler;

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v2, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/common/api/h;)V

    goto :goto_0

    :cond_0
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/common/d;)V

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/f;

    iget-object v8, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/h;

    new-instance v6, Lcom/google/android/gms/common/api/q;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/q;-><init>(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/c;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/m;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    if-eq v0, v1, :cond_a

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/t;->c()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->d()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->c()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/m;->j:I

    if-eqz v0, :cond_5

    if-ne p1, v4, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/t;->b()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->a_()V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    if-eqz v1, :cond_a

    if-eq p1, v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ao;->a(I)V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/m;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/m;->a(I)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/b;",
            ">(",
            "Lcom/google/android/gms/common/api/t",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->c()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bf;->a(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/common/api/t;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bf;->a(ZLjava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/common/api/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->r:Lcom/google/android/gms/common/api/r;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/r;)V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/t;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/m;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/m;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/m;->k:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/m;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/m;->i:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/m;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/m;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/m;->m:I

    iget v0, p0, Lcom/google/android/gms/common/api/m;->m:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->l:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/m;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/m;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/m;->k:I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/m;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/common/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->h()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/m;->l:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->l:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/m;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->o:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->g:Lcom/google/android/gms/internal/ao;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ao;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->o:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/m;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/m;->n:J

    return-wide v0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->c()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bf;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/t;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/t;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/m;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/m;->k:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/m;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/m;->i:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/b;",
            ">(",
            "Lcom/google/android/gms/common/api/c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/m;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/m;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/m;->j:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->o:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/m;->m:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/m;->h()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/m;->a(I)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/m;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/api/m;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
