.class Lcom/google/inject/internal/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy",
        "<TK;TV;",
        "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final expirationNanos:J

.field internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/inject/internal/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/MapMaker;Lcom/google/inject/internal/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker;",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    # getter for: Lcom/google/inject/internal/MapMaker;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/inject/internal/MapMaker;->access$100(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 438
    # getter for: Lcom/google/inject/internal/MapMaker;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/inject/internal/MapMaker;->access$200(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    .line 439
    # getter for: Lcom/google/inject/internal/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/google/inject/internal/MapMaker;->access$300(Lcom/google/inject/internal/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->expirationNanos:J

    .line 441
    # getter for: Lcom/google/inject/internal/MapMaker;->builder:Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/google/inject/internal/MapMaker;->access$400(Lcom/google/inject/internal/MapMaker;)Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/inject/internal/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 442
    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 549
    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/inject/internal/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 556
    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned null for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/google/inject/internal/MapMaker$NullOutputExceptionReference;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->setValueReference(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ValueReference;)V

    .line 561
    new-instance v1, Lcom/google/inject/internal/NullOutputException;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    new-instance v1, Lcom/google/inject/internal/MapMaker$ComputationExceptionReference;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->setValueReference(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ValueReference;)V

    .line 553
    new-instance v1, Lcom/google/inject/internal/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/inject/internal/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 563
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->setValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    .line 565
    return-object v0
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/internal/Function;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p2, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-interface {p2}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    .line 504
    # getter for: Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$500()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-interface {p2}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/inject/internal/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/inject/internal/MapMaker$StrategyImpl;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    invoke-interface {v0, v1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/inject/internal/MapMaker$ValueReference;)V

    .line 514
    :goto_0
    return-object v0

    .line 511
    :cond_0
    invoke-interface {p2}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v1

    .line 513
    invoke-interface {v0, v1}, Lcom/google/inject/internal/MapMaker$ValueReference;->copyFor(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/inject/internal/MapMaker$ValueReference;)V

    move-object v0, v1

    .line 514
    goto :goto_0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p2, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    check-cast p3, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)I
    .locals 1

    .prologue
    .line 493
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->getHash(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->getKey(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getNext()Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->getNext(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 541
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    .line 542
    invoke-interface {v0}, Lcom/google/inject/internal/MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->getValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->keyStrength:Lcom/google/inject/internal/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$Strength;->newEntry(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p3, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 463
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 464
    sget-object v2, Lcom/google/inject/internal/ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v3, Lcom/google/inject/internal/MapMaker$StrategyImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/inject/internal/MapMaker$StrategyImpl$1;-><init>(Lcom/google/inject/internal/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 474
    return-void
.end method

.method public setInternals(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    .line 648
    return-void
.end method

.method public setValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->valueStrength:Lcom/google/inject/internal/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/MapMaker$Strength;->referenceValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->setValueReference(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ValueReference;)V

    .line 447
    iget-wide v0, p0, Lcom/google/inject/internal/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 448
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->setValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ValueReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 574
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    # getter for: Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$500()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 575
    :goto_0
    invoke-interface {p1, p2}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/inject/internal/MapMaker$ValueReference;)V

    .line 576
    if-eqz v0, :cond_0

    .line 577
    monitor-enter p1

    .line 578
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 579
    monitor-exit p1

    .line 581
    :cond_0
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    .line 525
    # getter for: Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$500()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 526
    monitor-enter p1

    .line 528
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    # getter for: Lcom/google/inject/internal/MapMaker;->COMPUTING:Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$500()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_1
    invoke-interface {v0}, Lcom/google/inject/internal/MapMaker$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/MapMaker$StrategyImpl;->waitForValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
