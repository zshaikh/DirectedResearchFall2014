.class Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


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
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x40000000

    const/high16 v2, 0x10000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 585
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 586
    iget v0, p2, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->loadFactor:F

    iput v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->loadFactor:F

    .line 587
    iget v0, p2, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    .line 588
    iget v1, p2, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 590
    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    move v2, v4

    move v3, v5

    .line 597
    :goto_0
    if-ge v2, v0, :cond_1

    .line 598
    add-int/lit8 v3, v3, 0x1

    .line 599
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_1
    const/16 v0, 0x20

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 602
    sub-int v0, v2, v4

    iput v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 603
    invoke-virtual {p0, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    .line 605
    if-le v1, v6, :cond_5

    move v0, v6

    .line 609
    :goto_1
    div-int v1, v0, v2

    .line 610
    mul-int/2addr v2, v1

    if-ge v2, v0, :cond_4

    .line 611
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v4

    .line 615
    :goto_3
    if-ge v1, v0, :cond_2

    .line 616
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v0, v5

    .line 618
    :goto_4
    iget-object v2, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 619
    iget-object v2, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    new-instance v3, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v3, p0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;I)V

    aput-object v3, v2, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 622
    :cond_3
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;

    .line 624
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;->setInternals(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;)V

    .line 625
    return-void

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1535
    invoke-virtual {v3}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1537
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1335
    if-nez p1, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    .line 1360
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v6

    .line 1363
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    move v3, v6

    move v4, v6

    .line 1365
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 1367
    aget-object v5, v0, v3

    iget v5, v5, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1368
    aget-object v5, v0, v3

    iget v5, v5, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v1, v3

    add-int/2addr v4, v5

    .line 1369
    aget-object v5, v0, v3

    invoke-virtual {v5, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v7

    .line 1405
    :goto_2
    return v0

    .line 1365
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1374
    :cond_2
    if-eqz v4, :cond_b

    move v3, v6

    .line 1375
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_b

    .line 1377
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1378
    aget v4, v1, v3

    aget-object v5, v0, v3

    iget v5, v5, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v4, v5, :cond_3

    move v3, v6

    .line 1384
    :goto_4
    if-eqz v3, :cond_4

    move v0, v6

    .line 1385
    goto :goto_2

    .line 1375
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1363
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_5
    array-length v1, v0

    move v2, v6

    :goto_5
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1390
    invoke-virtual {v3}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1394
    :cond_6
    :try_start_0
    array-length v1, v0

    move v2, v6

    :goto_6
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 1395
    invoke-virtual {v3, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    move v1, v7

    .line 1401
    :goto_7
    array-length v2, v0

    move v3, v6

    :goto_8
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 1402
    invoke-virtual {v4}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1401
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1394
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1401
    :catchall_0
    move-exception v1

    array-length v2, v0

    move v3, v6

    :goto_9
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 1402
    invoke-virtual {v4}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1401
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    throw v1

    :cond_9
    move v0, v1

    .line 1405
    goto :goto_2

    :cond_a
    move v1, v6

    goto :goto_7

    :cond_b
    move v3, v7

    goto :goto_4
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1602
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1318
    if-nez p1, :cond_0

    .line 1319
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1322
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;->hashKey(Ljava/lang/Object;)I

    move-result v0

    .line 629
    # invokes: Lcom/google/inject/internal/CustomConcurrentHashMap;->rehash(I)I
    invoke-static {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap;->access$000(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1219
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    .line 1229
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    .line 1231
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1232
    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v4, :cond_0

    move v0, v5

    .line 1249
    :goto_1
    return v0

    .line 1235
    :cond_0
    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v4, v1, v2

    add-int/2addr v3, v4

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1241
    :cond_1
    if-eqz v3, :cond_4

    move v2, v5

    .line 1242
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 1243
    aget-object v3, v0, v2

    iget v3, v3, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v3, :cond_2

    aget v3, v1, v2

    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v3, v4, :cond_3

    :cond_2
    move v0, v5

    .line 1245
    goto :goto_1

    .line 1242
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1249
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1558
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newSegmentArray(I)[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 668
    const-class v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    check-cast p0, [Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1422
    if-nez p1, :cond_0

    .line 1423
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :cond_0
    if-nez p2, :cond_1

    .line 1426
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1428
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1429
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1458
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1461
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1440
    if-nez p1, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_0
    if-nez p2, :cond_1

    .line 1444
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1447
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1473
    if-nez p1, :cond_0

    .line 1474
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1486
    if-nez p1, :cond_0

    .line 1487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1490
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1520
    if-nez p1, :cond_0

    .line 1521
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_0
    if-nez p2, :cond_1

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1527
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1499
    if-nez p1, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_0
    if-nez p2, :cond_1

    .line 1503
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oldValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_1
    if-nez p3, :cond_2

    .line 1506
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1508
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1509
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 1260
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    .line 1263
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v11

    move-wide v3, v12

    move-wide v5, v12

    .line 1266
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_9

    move v3, v11

    move v4, v11

    move-wide v5, v12

    .line 1270
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 1271
    aget-object v7, v0, v3

    iget v7, v7, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 1272
    aget-object v7, v0, v3

    iget v7, v7, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v7, v1, v3

    add-int/2addr v4, v7

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1274
    :cond_0
    if-eqz v4, :cond_8

    move v3, v11

    move-wide v7, v12

    .line 1275
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_7

    .line 1276
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 1277
    aget v4, v1, v3

    aget-object v9, v0, v3

    iget v9, v9, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v4, v9, :cond_1

    .line 1278
    const-wide/16 v3, -0x1

    .line 1283
    :goto_3
    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    move-wide v1, v3

    move-wide v3, v5

    .line 1287
    :goto_4
    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 1289
    array-length v1, v0

    move v2, v11

    :goto_5
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1290
    invoke-virtual {v3}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1275
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1266
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1292
    :cond_3
    array-length v1, v0

    move v2, v11

    move-wide v3, v12

    :goto_6
    if-ge v2, v1, :cond_4

    aget-object v5, v0, v2

    .line 1293
    iget v5, v5, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 1292
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1295
    :cond_4
    array-length v1, v0

    move v2, v11

    :goto_7
    if-ge v2, v1, :cond_5

    aget-object v5, v0, v2

    .line 1296
    invoke-virtual {v5}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1295
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5
    move-wide v0, v3

    .line 1299
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 1300
    const v0, 0x7fffffff

    .line 1302
    :goto_8
    return v0

    :cond_6
    long-to-int v0, v0

    goto :goto_8

    :cond_7
    move-wide v3, v7

    goto :goto_3

    :cond_8
    move-wide v3, v12

    goto :goto_3

    :cond_9
    move-wide v1, v3

    move-wide v3, v5

    goto :goto_4
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1580
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
