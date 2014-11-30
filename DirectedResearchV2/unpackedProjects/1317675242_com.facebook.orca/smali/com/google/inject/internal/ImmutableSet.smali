.class public abstract Lcom/google/inject/internal/ImmutableSet;
.super Lcom/google/inject/internal/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_SET:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;-><init>(Lcom/google/inject/internal/ImmutableSet$1;)V

    sput-object v0, Lcom/google/inject/internal/ImmutableSet;->EMPTY_IMMUTABLE_SET:Lcom/google/inject/internal/ImmutableSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/inject/internal/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/google/inject/internal/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/inject/internal/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    instance-of v0, p0, Lcom/google/inject/internal/ImmutableSet;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Lcom/google/inject/internal/ImmutableSet;

    move-object v0, p0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/inject/internal/Collections2;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOfInternal(Ljava/util/Collection;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method private static copyOfInternal(Ljava/util/Collection;)Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static create(Ljava/lang/Iterable;I)Lcom/google/inject/internal/ImmutableSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;I)",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 332
    invoke-static {p1}, Lcom/google/inject/internal/Hashing;->chooseTableSize(I)I

    move-result v0

    .line 333
    new-array v1, v0, [Ljava/lang/Object;

    .line 334
    sub-int/2addr v0, v11

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v10

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 340
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 341
    invoke-static {v6}, Lcom/google/inject/internal/Hashing;->smear(I)I

    move-result v7

    .line 342
    :goto_1
    and-int v8, v7, v0

    .line 343
    aget-object v9, v1, v8

    .line 344
    if-nez v9, :cond_1

    .line 346
    aput-object v5, v1, v8

    .line 347
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/2addr v4, v6

    .line 349
    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 341
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 357
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v11, :cond_3

    new-instance v0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    :goto_2
    return-object v0

    :cond_3
    new-instance v3, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v3

    goto :goto_2
.end method

.method public static of()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/google/inject/internal/ImmutableSet;->EMPTY_IMMUTABLE_SET:Lcom/google/inject/internal/ImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 95
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/google/inject/internal/ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    if-ne p1, p0, :cond_0

    .line 169
    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    .line 171
    :cond_0
    instance-of v1, p1, Lcom/google/inject/internal/ImmutableSet;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->isHashCodeFast()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/inject/internal/ImmutableSet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/inject/internal/ImmutableSet;->isHashCodeFast()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 175
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {p0, p1}, Lcom/google/inject/internal/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 185
    :cond_0
    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "[]"

    .line 202
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 200
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
