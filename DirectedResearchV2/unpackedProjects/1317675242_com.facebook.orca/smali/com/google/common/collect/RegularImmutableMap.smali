.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:I

.field private final transient d:I

.field private transient e:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient f:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 49
    array-length v0, p1

    .line 50
    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->b(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 52
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->a(I)I

    move-result v1

    .line 53
    invoke-direct {p0, v1}, Lcom/google/common/collect/RegularImmutableMap;->b(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->b:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 54
    sub-int/2addr v1, v9

    iput v1, p0, Lcom/google/common/collect/RegularImmutableMap;->c:I

    move v1, v8

    move v2, v8

    .line 57
    :goto_0
    if-ge v1, v0, :cond_2

    .line 60
    aget-object v3, p1, v1

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 63
    add-int/2addr v2, v5

    .line 64
    invoke-static {v5}, Lcom/google/common/collect/Hashing;->a(I)I

    move-result v5

    iget v6, p0, Lcom/google/common/collect/RegularImmutableMap;->c:I

    and-int/2addr v5, v6

    .line 65
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableMap;->b:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v6, v6, v5

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, v6}, Lcom/google/common/collect/RegularImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v3

    .line 69
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->b:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v3, v7, v5

    .line 70
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v3, v5, v1

    move-object v3, v6

    .line 71
    :goto_1
    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v3}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v9

    :goto_2
    const-string v6, "duplicate key: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v3}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->a()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v3

    goto :goto_1

    :cond_0
    move v5, v8

    .line 72
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iput v2, p0, Lcom/google/common/collect/RegularImmutableMap;->d:I

    .line 77
    return-void
.end method

.method private static a(I)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 82
    if-lez v0, :cond_0

    move v1, v3

    :goto_0
    const-string v2, "table too large: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v0

    :cond_0
    move v1, v5

    .line 82
    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .param p2    # Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p2, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/RegularImmutableMap;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->d:I

    return v0
.end method

.method private b(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-array v0, p1, [Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->e:Lcom/google/common/collect/ImmutableSet;

    .line 194
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->e:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->f:Lcom/google/common/collect/ImmutableSet;

    .line 220
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->f:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    if-nez p1, :cond_0

    move v0, v4

    .line 183
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 183
    goto :goto_0
.end method

.method public d()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->g:Lcom/google/common/collect/ImmutableCollection;

    .line 250
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->g:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p1, :cond_0

    move-object v0, v2

    .line 162
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->a(I)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableMap;->c:I

    and-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->b:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v0, v1, v0

    .line 148
    :goto_1
    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->a()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 162
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Collections2;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/google/common/collect/Collections2;->a:Lcom/google/common/base/Joiner;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->a:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->d()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
