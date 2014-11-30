.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:J

.field private transient c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMapBasedMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    .line 67
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 336
    if-nez v0, :cond_0

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 339
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 340
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 0

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    return-wide p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 243
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 256
    if-nez p2, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 259
    :cond_0
    if-lez p2, :cond_1

    move v0, v6

    :goto_1
    const-string v1, "occurrences cannot be negative: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 263
    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v7

    .line 273
    :goto_2
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    goto :goto_0

    :cond_1
    move v0, v7

    .line 259
    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 268
    int-to-long v2, v1

    int-to-long v4, p2

    add-long/2addr v2, v4

    .line 269
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    move v4, v6

    :goto_3
    const-string v5, "too many occurrences: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move v0, v1

    goto :goto_2

    :cond_3
    move v4, v7

    .line 269
    goto :goto_3
.end method

.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 278
    if-nez p2, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 281
    :cond_0
    if-lez p2, :cond_1

    move v0, v2

    :goto_1
    const-string v1, "occurrences cannot be negative: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    if-nez v0, :cond_2

    move v0, v4

    .line 285
    goto :goto_0

    :cond_1
    move v0, v4

    .line 281
    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 291
    if-le v1, p2, :cond_3

    move v2, p2

    .line 298
    :goto_2
    neg-int v3, v2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 299
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    int-to-long v5, v2

    sub-long v2, v3, v5

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    move v0, v1

    .line 300
    goto :goto_0

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    goto :goto_2
.end method

.method b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Lcom/google/common/collect/AbstractMapBasedMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 95
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->b:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    return v0
.end method
