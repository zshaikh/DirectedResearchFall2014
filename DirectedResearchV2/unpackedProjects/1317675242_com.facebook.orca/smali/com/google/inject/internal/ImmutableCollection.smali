.class public abstract Lcom/google/inject/internal/ImmutableCollection;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final EMPTY_IMMUTABLE_COLLECTION:Lcom/google/inject/internal/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableCollection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Lcom/google/inject/internal/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/inject/internal/ImmutableCollection$EmptyImmutableCollection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ImmutableCollection$EmptyImmutableCollection;-><init>(Lcom/google/inject/internal/ImmutableCollection$1;)V

    sput-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/google/inject/internal/ImmutableCollection;

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/google/inject/internal/ImmutableCollection$1;

    invoke-direct {v0}, Lcom/google/inject/internal/ImmutableCollection$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ITERATOR:Lcom/google/inject/internal/UnmodifiableIterator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ITERATOR:Lcom/google/inject/internal/UnmodifiableIterator;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_0

    move v0, v2

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/inject/internal/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 33
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->size()I

    move-result v0

    .line 65
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 66
    invoke-static {p1, v0}, Lcom/google/inject/internal/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_0
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 79
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    move v1, v4

    .line 80
    goto :goto_1

    .line 67
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 68
    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 81
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
