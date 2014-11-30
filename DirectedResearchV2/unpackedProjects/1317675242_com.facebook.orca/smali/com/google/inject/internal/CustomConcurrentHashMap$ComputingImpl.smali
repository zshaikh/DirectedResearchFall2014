.class Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final computer:Lcom/google/inject/internal/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;Lcom/google/inject/internal/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1986
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;)V

    .line 1987
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;

    .line 1988
    iput-object p3, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/inject/internal/Function;

    .line 1989
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2002
    .line 2004
    if-nez p1, :cond_0

    .line 2005
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2008
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2009
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    .line 2011
    :cond_1
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 2012
    if-nez v2, :cond_7

    .line 2014
    invoke-virtual {v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2017
    :try_start_0
    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 2018
    if-nez v2, :cond_b

    .line 2021
    iget v2, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2022
    add-int/lit8 v3, v2, 0x1

    iget v4, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v2, v4, :cond_2

    .line 2023
    invoke-virtual {v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2025
    :cond_2
    iget-object v2, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2026
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v7

    and-int/2addr v4, v0

    .line 2027
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2028
    iget v6, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2029
    iget-object v6, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v6, p1, v0, v5}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2030
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2031
    iput v3, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v7

    move-object v3, v5

    .line 2034
    :goto_1
    invoke-virtual {v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2037
    if-eqz v2, :cond_6

    .line 2041
    :try_start_1
    iget-object v2, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;

    iget-object v4, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/inject/internal/Function;

    invoke-interface {v2, p1, v3, v4}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/internal/Function;)Ljava/lang/Object;

    move-result-object v2

    .line 2042
    if-nez v2, :cond_4

    .line 2043
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "compute() returned null unexpectedly"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    :catchall_0
    move-exception v2

    if-nez v8, :cond_3

    .line 2050
    invoke-virtual {v1, v3, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_3
    throw v2

    .line 2034
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v0

    .line 2049
    :cond_4
    if-nez v7, :cond_5

    .line 2050
    invoke-virtual {v1, v3, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_5
    move-object v0, v2

    .line 2074
    :goto_2
    return-object v0

    :cond_6
    move-object v2, v3

    :cond_7
    move v3, v8

    .line 2061
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v4, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2062
    if-nez v4, :cond_8

    .line 2064
    invoke-virtual {v1, v2, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2073
    if-eqz v3, :cond_1

    .line 2074
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2073
    :cond_8
    if-eqz v3, :cond_9

    .line 2074
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    move-object v0, v4

    goto :goto_2

    .line 2068
    :catch_0
    move-exception v3

    move v3, v7

    .line 2070
    goto :goto_3

    .line 2073
    :catchall_2
    move-exception v0

    if-eqz v3, :cond_a

    .line 2074
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_a
    throw v0

    :cond_b
    move-object v3, v2

    move v2, v8

    goto :goto_1
.end method
