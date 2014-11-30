.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/Executor;

.field static final c:Lcom/google/common/base/Ticker;


# instance fields
.field d:I

.field e:I

.field f:I

.field g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field i:J

.field j:J

.field k:Z

.field l:Z

.field m:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/concurrent/Executor;

.field p:Lcom/google/common/base/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->b:Ljava/util/concurrent/Executor;

    .line 123
    new-instance v0, Lcom/google/common/collect/MapMaker$2;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->c:Lcom/google/common/base/Ticker;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 139
    iput v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    .line 140
    iput v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    .line 141
    iput v0, p0, Lcom/google/common/collect/MapMaker;->f:I

    .line 146
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 147
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->j:J

    .line 163
    return-void
.end method

.method private c(JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 441
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    const-string v1, "expireAfterWrite was already set to %s ns"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->j:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    move v0, v6

    :goto_1
    const-string v1, "expireAfterAccess was already set to %s ns"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    move v0, v6

    :goto_2
    const-string v1, "duration cannot be negative: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    return-void

    :cond_0
    move v0, v5

    .line 441
    goto :goto_0

    :cond_1
    move v0, v5

    .line 444
    goto :goto_1

    :cond_2
    move v0, v5

    .line 447
    goto :goto_2
.end method


# virtual methods
.method a()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->m:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Equivalence;

    return-object p0
.end method

.method a(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    goto :goto_0
.end method

.method public a(I)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v5

    :goto_0
    const-string v1, "initial capacity was already set to %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-ltz p1, :cond_1

    move v0, v5

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 207
    iput p1, p0, Lcom/google/common/collect/MapMaker;->d:I

    .line 208
    return-object p0

    :cond_0
    move v0, v4

    .line 204
    goto :goto_0

    :cond_1
    move v0, v4

    .line 206
    goto :goto_1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 324
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    const-string v1, "Key strength was already set to %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 327
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eq p1, v0, :cond_0

    .line 329
    iput-boolean v4, p0, Lcom/google/common/collect/MapMaker;->k:Z

    .line 331
    :cond_0
    return-object p0

    :cond_1
    move v0, v5

    .line 324
    goto :goto_0
.end method

.method b()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->n:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->i()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Equivalence;

    return-object p0
.end method

.method public b(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.concurrent.ConcurrentHashMap concurrencyLevel"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    iget v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v5

    :goto_0
    const-string v1, "concurrency level was already set to %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    if-lez p1, :cond_1

    move v0, v5

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 274
    iput p1, p0, Lcom/google/common/collect/MapMaker;->e:I

    .line 275
    return-object p0

    :cond_0
    move v0, v4

    .line 271
    goto :goto_0

    :cond_1
    move v0, v4

    .line 273
    goto :goto_1
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 434
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 435
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->l:Z

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->l:Z

    .line 436
    iput-boolean v3, p0, Lcom/google/common/collect/MapMaker;->k:Z

    .line 437
    return-object p0

    .line 435
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    const-string v1, "Value strength was already set to %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 390
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eq p1, v0, :cond_0

    .line 392
    iput-boolean v4, p0, Lcom/google/common/collect/MapMaker;->k:Z

    .line 394
    :cond_0
    return-object p0

    :cond_1
    move v0, v5

    .line 387
    goto :goto_0
.end method

.method public b(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;

    move-result-object v0

    .line 655
    new-instance v1, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v1, v0}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker$Cache;)V

    return-object v1
.end method

.method c()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    goto :goto_0
.end method

.method d()I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    goto :goto_0
.end method

.method public e()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    return-object p0
.end method

.method public g()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    return-object p0
.end method

.method j()J
    .locals 4

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    goto :goto_0
.end method

.method k()J
    .locals 4

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->j:J

    goto :goto_0
.end method

.method l()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->o:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/MapMaker;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method m()Lcom/google/common/base/Ticker;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->p:Lcom/google/common/base/Ticker;

    sget-object v1, Lcom/google/common/collect/MapMaker;->c:Lcom/google/common/base/Ticker;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Ticker;

    return-object p0
.end method

.method n()Lcom/google/common/collect/MapEvictionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapEvictionListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapEvictionListener;

    goto :goto_0
.end method

.method public o()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->k:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v1

    const/high16 v2, 0x3f400000

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 561
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 664
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 665
    iget v1, p0, Lcom/google/common/collect/MapMaker;->d:I

    if-eq v1, v3, :cond_0

    .line 666
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 668
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->e:I

    if-eq v1, v3, :cond_1

    .line 669
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 671
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->f:I

    if-eq v1, v3, :cond_2

    .line 672
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 674
    :cond_2
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 675
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 677
    :cond_3
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->j:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 678
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 680
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eqz v1, :cond_5

    .line 681
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eqz v1, :cond_6

    .line 684
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 686
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->m:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 687
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 689
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->n:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 690
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 692
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/MapEvictionListener;

    if-eqz v1, :cond_9

    .line 693
    const-string v1, "evictionListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 695
    :cond_9
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->o:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_a

    .line 696
    const-string v1, "cleanupExecutor"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 698
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
