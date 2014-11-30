.class Lcom/google/common/collect/CustomConcurrentHashMap;
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
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final r:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final s:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final transient b:I

.field final transient c:I

.field final transient d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field final i:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field final j:I

.field final k:J

.field final l:J

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final transient o:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field final p:Ljava/util/concurrent/Executor;

.field final q:Lcom/google/common/base/Ticker;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 804
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$2;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->s:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:I

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 205
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->i()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    .line 208
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    .line 210
    iget v0, p1, Lcom/google/common/collect/MapMaker;->f:I

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    .line 211
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:J

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->l:J

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->getFactory(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 216
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Ljava/util/concurrent/Executor;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->m()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/base/Ticker;

    .line 219
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->n()Lcom/google/common/collect/MapEvictionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:Lcom/google/common/collect/MapEvictionListener;

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:Lcom/google/common/collect/MapEvictionListener;

    sget-object v1, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    .line 224
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v6

    move v2, v5

    .line 236
    :goto_1
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:I

    if-ge v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    if-gt v3, v4, :cond_3

    .line 237
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 238
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 240
    :cond_3
    const/16 v3, 0x20

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->c:I

    .line 241
    sub-int v2, v1, v6

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:I

    .line 243
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 245
    div-int v2, v0, v1

    .line 246
    mul-int v3, v2, v1

    if-ge v3, v0, :cond_8

    .line 247
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v6

    .line 251
    :goto_3
    if-ge v2, v0, :cond_4

    .line 252
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 258
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    rem-int v1, v3, v1

    move v3, v0

    move v0, v5

    .line 259
    :goto_4
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 260
    if-ne v0, v1, :cond_5

    .line 261
    add-int/lit8 v3, v3, -0x1

    .line 263
    :cond_5
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v5

    aput-object v5, v4, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v5

    .line 266
    :goto_5
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 267
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v3

    aput-object v3, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 271
    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method private static a(I)I
    .locals 3

    .prologue
    .line 1705
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1706
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1707
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1708
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1709
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1710
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1810
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1811
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1812
    return-void
.end method

.method static c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1853
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1854
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1855
    return-void
.end method

.method static e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1817
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1818
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1819
    return-void
.end method

.method static f(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1859
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1860
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1861
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1862
    return-void
.end method

.method static g()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 646
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method static h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 801
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    return-object v0
.end method

.method static i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->s:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1736
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(I)I

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
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
    .line 1722
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 1723
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 1725
    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1726
    return-object v1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .param p3    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
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
    .line 1716
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->o:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method a(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1888
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    return-object v0
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->i:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->referenceValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    return-object v0
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
    .line 1750
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1751
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 1752
    return-void
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1741
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1742
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    .line 1743
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    .line 1744
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    .line 1747
    :cond_0
    return-void
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->s:Ljava/util/Queue;

    if-ne v0, v1, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1829
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1830
    invoke-interface {p3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1831
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1779
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1802
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->r:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->q:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

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

.method c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1787
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1794
    :goto_0
    return v0

    .line 1790
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 1791
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 1792
    goto :goto_0

    .line 1794
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final c(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1871
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    check-cast p0, [Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    return-object p0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3399
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m()V

    .line 3398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3401
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3324
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3325
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3330
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move v1, v3

    .line 3333
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3336
    aget-object v2, v0, v1

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 3337
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3338
    const/4 v0, 0x1

    .line 3341
    :goto_1
    return v0

    .line 3333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3341
    goto :goto_1
.end method

.method d()Z
    .locals 4

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1798
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 4

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 3420
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->v:Ljava/util/Set;

    .line 3421
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->v:Ljava/util/Set;

    goto :goto_0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->p:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/MapMaker;->b:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 3310
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3311
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3267
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3277
    array-length v1, v0

    new-array v1, v1, [I

    move v2, v5

    move v3, v5

    .line 3279
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 3280
    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v4, :cond_0

    move v0, v5

    .line 3297
    :goto_1
    return v0

    .line 3283
    :cond_0
    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    aput v4, v1, v2

    add-int/2addr v3, v4

    .line 3279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3289
    :cond_1
    if-eqz v3, :cond_4

    move v2, v5

    .line 3290
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 3291
    aget-object v3, v0, v2

    iget v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-nez v3, :cond_2

    aget v3, v1, v2

    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:I

    if-eq v3, v4, :cond_3

    :cond_2
    move v0, v5

    .line 3293
    goto :goto_1

    .line 3290
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3297
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method j()V
    .locals 3

    .prologue
    .line 1843
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->n:Lcom/google/common/collect/MapEvictionListener;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/common/collect/MapEvictionListener;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1847
    :cond_0
    return-void
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
    .line 3406
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->t:Ljava/util/Set;

    .line 3407
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->t:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3345
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3346
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3355
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

    .line 3356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3358
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
    .line 3350
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3351
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3361
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3362
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3371
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3372
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

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
    .line 3393
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3394
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 3381
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3382
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 9

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3302
    const-wide/16 v1, 0x0

    .line 3303
    const/4 v3, 0x0

    move v6, v3

    move-wide v7, v1

    move-wide v2, v7

    move v1, v6

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 3304
    aget-object v4, v0, v1

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3306
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    return v0
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
    .line 3413
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->u:Ljava/util/Collection;

    .line 3414
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->u:Ljava/util/Collection;

    goto :goto_0
.end method
