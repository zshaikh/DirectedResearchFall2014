.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.source "ComputingConcurrentHashMap.java"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ComputingConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;II)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a:Lcom/google/common/collect/ComputingConcurrentHashMap;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    .line 78
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 171
    :goto_1
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->h()V

    .line 95
    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 96
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v8

    and-int v3, p2, v0

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v4, v0

    .line 99
    :goto_2
    if-eqz v4, :cond_f

    .line 100
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 101
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_6

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/ComputingConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 103
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a()Z

    move-result v5

    if-nez v5, :cond_3

    .line 105
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->i()V

    move-object v0, v1

    goto :goto_1

    .line 111
    :cond_2
    :try_start_1
    invoke-virtual {p0, v4, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    :cond_3
    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    .line 118
    :goto_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 120
    :cond_4
    new-instance v5, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    iget-object v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a:Lcom/google/common/collect/ComputingConcurrentHashMap;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/collect/ComputingConcurrentHashMap;Lcom/google/common/collect/ComputingConcurrentHashMap$1;)V

    .line 122
    if-nez v1, :cond_d

    .line 123
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 124
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 126
    :goto_4
    invoke-interface {v0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move-object v0, v5

    .line 129
    :goto_5
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->i()V

    .line 133
    if-eqz v0, :cond_8

    .line 139
    :try_start_2
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 140
    :try_start_3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->a(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 141
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 142
    :try_start_5
    const-string v1, "compute() returned null unexpectedly"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 145
    if-nez v2, :cond_5

    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    :cond_5
    move-object v0, v2

    goto/16 :goto_1

    .line 99
    :cond_6
    :try_start_6
    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    goto :goto_2

    .line 129
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->i()V

    throw v0

    .line 141
    :catchall_1
    move-exception v2

    move-object v3, v4

    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 145
    :catchall_2
    move-exception v1

    move-object v2, v3

    :goto_7
    if-nez v2, :cond_7

    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->b(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    :cond_7
    throw v1

    :cond_8
    move v0, v10

    .line 156
    :goto_8
    :try_start_9
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v8

    :goto_9
    const-string v3, "Recursive computation"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 157
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->b()Ljava/lang/Object;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_b

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 170
    if-eqz v0, :cond_9

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    move-object v0, v2

    goto/16 :goto_1

    :cond_a
    move v2, v10

    .line 156
    goto :goto_9

    .line 170
    :cond_b
    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v0

    move v0, v8

    .line 167
    goto :goto_8

    .line 170
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_c

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    throw v1

    .line 145
    :catchall_4
    move-exception v1

    move-object v2, v4

    goto :goto_7

    :catchall_5
    move-exception v1

    goto :goto_7

    .line 141
    :catchall_6
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_6

    :catchall_7
    move-exception v2

    goto :goto_6

    :cond_d
    move-object v0, v1

    goto/16 :goto_4

    :cond_e
    move-object v0, v9

    goto/16 :goto_5

    :cond_f
    move-object v4, v1

    move-object v1, v9

    goto/16 :goto_3
.end method
