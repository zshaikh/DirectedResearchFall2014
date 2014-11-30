.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# instance fields
.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final l:Ljava/lang/Runnable;

.field final synthetic m:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V
    .locals 1

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1981
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    .line 1996
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2830
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Ljava/lang/Runnable;

    .line 2014
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:I

    .line 2015
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2017
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/Queue;

    .line 2021
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    .line 2025
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    .line 2028
    return-void

    .line 2017
    :cond_1
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 2021
    :cond_2
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2025
    :cond_3
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2599
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2601
    invoke-interface {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    .line 2602
    :goto_0
    if-eq v0, p2, :cond_1

    .line 2603
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2604
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2602
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2606
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    goto :goto_1

    .line 2609
    :cond_1
    return-object v1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2340
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()V

    .line 2345
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2347
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2348
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2352
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2353
    if-nez v1, :cond_0

    .line 2354
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v3

    :goto_1
    return-object v0

    .line 2358
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v1

    goto :goto_1

    .line 2346
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2365
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v3

    goto :goto_1

    .line 2365
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2371
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2374
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()V

    .line 2376
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2377
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    if-le v0, v1, :cond_5

    .line 2378
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e()V

    .line 2379
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 2383
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2384
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    and-int v3, p2, v0

    .line 2385
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v4, v0

    .line 2388
    :goto_1
    if-eqz v4, :cond_3

    .line 2389
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2390
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2394
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2395
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2397
    if-nez v1, :cond_1

    .line 2398
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2404
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->c()V

    .line 2405
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d()Z

    .line 2406
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2407
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2417
    :cond_0
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2408
    :cond_1
    if-eqz p4, :cond_0

    .line 2412
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v1

    goto :goto_2

    .line 2388
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v4

    goto :goto_1

    .line 2422
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2423
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 2424
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2428
    :cond_4
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2429
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v4, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2430
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2431
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2432
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2433
    const/4 v0, 0x0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    goto :goto_2

    .line 2435
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    throw v0

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2031
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2122
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2123
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2125
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2129
    :cond_2
    return-void
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2069
    return-void
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2137
    return-void
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2049
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2050
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2051
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2052
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2035
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2036
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:I

    if-ne v0, v1, :cond_0

    .line 2038
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2040
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2041
    return-void
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2619
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2621
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int v1, v0, v5

    .line 2622
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2623
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    sub-int/2addr v2, v5

    and-int/2addr v2, p2

    .line 2624
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2626
    :goto_0
    if-eqz v0, :cond_1

    .line 2627
    if-ne v0, p1, :cond_0

    .line 2628
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2629
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-virtual {v2, v3, p2, v4}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2630
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2631
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v5

    :goto_1
    return v0

    .line 2626
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2636
    :cond_1
    const/4 v0, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2280
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_3

    .line 2281
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2282
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    move v3, v6

    .line 2283
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2284
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_2

    .line 2286
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 2287
    if-nez v4, :cond_1

    .line 2285
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2290
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2291
    const/4 v0, 0x1

    .line 2297
    :goto_2
    return v0

    .line 2283
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v6

    .line 2297
    goto :goto_2
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2652
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v0, v5

    .line 2653
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 2655
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2656
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2658
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2659
    if-ne v2, p3, :cond_0

    .line 2660
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2661
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2662
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2663
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v5

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v4

    goto :goto_1

    .line 2654
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2672
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2301
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2305
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()V

    .line 2307
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2309
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2310
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2314
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2315
    if-nez v1, :cond_0

    .line 2316
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v3

    :goto_1
    return v0

    .line 2320
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2321
    invoke-virtual {p0, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    const/4 v0, 0x1

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    goto :goto_1

    .line 2326
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v3

    goto :goto_1

    .line 2308
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2334
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v3

    goto :goto_1

    .line 2334
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    throw v0
.end method

.method b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2198
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object p0
.end method

.method b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2229
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_3

    .line 2230
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2232
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2231
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2236
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2237
    if-eqz v1, :cond_0

    .line 2241
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2242
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2243
    if-eqz v1, :cond_2

    .line 2244
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2251
    :cond_3
    const/4 v0, 0x0

    .line 2253
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2143
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2150
    :cond_0
    return-void

    .line 2147
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2084
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_0
    return-void
.end method

.method b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2701
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2703
    if-ne v0, p1, :cond_0

    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    .line 2708
    :goto_1
    return v0

    .line 2702
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2708
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2677
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2679
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2681
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2682
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2684
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 2685
    if-ne v1, p3, :cond_0

    .line 2686
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2687
    const/4 v0, 0x1

    .line 2695
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v3

    goto :goto_1

    .line 2680
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2695
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2550
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2553
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()V

    .line 2555
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v0, v6

    .line 2556
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2557
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v6

    and-int v2, p2, v0

    .line 2558
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2560
    :goto_0
    if-eqz v3, :cond_3

    .line 2561
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2562
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2564
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2565
    if-nez v4, :cond_1

    .line 2566
    invoke-virtual {p0, v3, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v7

    :goto_1
    return v0

    .line 2567
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p3, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2568
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2569
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2571
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v3, v6

    .line 2572
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2573
    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v6

    goto :goto_1

    .line 2560
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 2582
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move v0, v7

    goto :goto_1

    .line 2582
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    throw v0
.end method

.method c()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2156
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    :cond_0
    return-void

    .line 2161
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2163
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2164
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2165
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2096
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2097
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:J

    .line 2102
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2103
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2105
    :cond_0
    return-void

    .line 2100
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->l:J

    goto :goto_0
.end method

.method c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2713
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 2729
    :goto_0
    return v0

    .line 2718
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v0, v4

    .line 2719
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2720
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 2721
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 2722
    goto :goto_0

    .line 2725
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2726
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v3, v2, p2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2727
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2728
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    move v0, v4

    .line 2729
    goto :goto_0
.end method

.method c(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2258
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_3

    .line 2259
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2261
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2260
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2265
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2266
    if-eqz v1, :cond_0

    .line 2270
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2271
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2276
    :goto_1
    return v0

    :cond_2
    move v0, v3

    .line 2271
    goto :goto_1

    :cond_3
    move v0, v3

    .line 2276
    goto :goto_1
.end method

.method d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2514
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2516
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()V

    .line 2518
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v0, v6

    .line 2519
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2520
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v6

    and-int v2, p2, v0

    .line 2521
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2523
    :goto_0
    if-eqz v3, :cond_2

    .line 2524
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2525
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2527
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2528
    if-nez v4, :cond_0

    .line 2529
    invoke-virtual {p0, v3, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    move-object v0, v4

    :goto_2
    return-object v0

    .line 2531
    :cond_0
    :try_start_1
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2532
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2534
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    sub-int/2addr v3, v6

    .line 2535
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2536
    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2544
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    throw v0

    .line 2523
    :cond_1
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 2542
    :cond_2
    const/4 v0, 0x0

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    goto :goto_2
.end method

.method d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2734
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2735
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2736
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2737
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2738
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2739
    return-void
.end method

.method d()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:I

    if-lt v0, v1, :cond_1

    .line 2181
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2183
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2184
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2187
    :cond_0
    const/4 v0, 0x1

    .line 2189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2746
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 2757
    :cond_0
    :goto_0
    return-object v0

    .line 2749
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2750
    if-nez v0, :cond_2

    move-object v0, v2

    .line 2751
    goto :goto_0

    .line 2753
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2754
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    move-object v0, v2

    .line 2755
    goto :goto_0
.end method

.method e()V
    .locals 10
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2445
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2446
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    .line 2447
    const/high16 v0, 0x40000000

    if-lt v2, v0, :cond_0

    .line 2511
    :goto_0
    return-void

    .line 2465
    :cond_0
    shl-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 2467
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2468
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int v4, v0, v4

    .line 2469
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_6

    .line 2472
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2474
    if-eqz v0, :cond_1

    .line 2475
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v6

    .line 2476
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 2479
    if-nez v6, :cond_2

    .line 2480
    invoke-virtual {v3, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2469
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v8, v0

    .line 2487
    :goto_2
    if-eqz v6, :cond_4

    .line 2488
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v9

    and-int/2addr v9, v4

    .line 2489
    if-eq v9, v7, :cond_3

    move v7, v9

    move-object v8, v6

    .line 2487
    :cond_3
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v6

    goto :goto_2

    .line 2495
    :cond_4
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v6, v0

    .line 2498
    :goto_3
    if-eq v6, v8, :cond_1

    .line 2499
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2500
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2498
    :goto_4
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 2502
    :cond_5
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v7, v0, v4

    .line 2503
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2504
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 2510
    :cond_6
    iput-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0
.end method

.method f()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2762
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    const/4 v0, 0x0

    move v3, v0

    .line 2765
    :goto_0
    const/16 v0, 0x10

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 2766
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v1

    .line 2768
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v5, v1

    .line 2769
    :goto_1
    if-eqz v5, :cond_2

    .line 2770
    if-ne v5, v0, :cond_0

    .line 2771
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2772
    invoke-virtual {p0, v1, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2773
    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2774
    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v3, v0

    .line 2779
    goto :goto_0

    .line 2769
    :cond_0
    invoke-interface {v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v5

    goto :goto_1

    .line 2780
    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method g()V
    .locals 2

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j()V

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method h()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l()V

    .line 2810
    :goto_0
    return-void

    .line 2808
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c()V

    goto :goto_0
.end method

.method i()V
    .locals 2

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2817
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l()V

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k()V

    goto :goto_0

    .line 2822
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method j()V
    .locals 0

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k()V

    .line 2842
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->j()V

    .line 2850
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 2857
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2859
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c()V

    .line 2860
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f()V

    .line 2861
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2865
    return-void

    .line 2863
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method m()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2868
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_1

    .line 2869
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2871
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2872
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2873
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2876
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2877
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2879
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    .line 2880
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2882
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2885
    :cond_1
    return-void

    .line 2882
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method
