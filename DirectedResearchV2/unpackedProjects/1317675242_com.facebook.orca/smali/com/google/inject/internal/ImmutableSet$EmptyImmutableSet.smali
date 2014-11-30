.class final Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;
.super Lcom/google/inject/internal/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/ImmutableSet",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/ImmutableSet$1;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 236
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Ljava/util/Set;

    .line 242
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/google/inject/internal/Iterators;->emptyIterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/google/inject/internal/ImmutableSet$EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 229
    array-length v0, p1

    if-lez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 232
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "[]"

    return-object v0
.end method
