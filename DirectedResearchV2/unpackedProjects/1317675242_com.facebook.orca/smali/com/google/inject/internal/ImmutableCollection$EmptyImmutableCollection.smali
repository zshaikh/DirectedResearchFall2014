.class Lcom/google/inject/internal/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/inject/internal/ImmutableCollection;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/ImmutableCollection",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/ImmutableCollection$1;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 184
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
    .line 192
    # getter for: Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ITERATOR:Lcom/google/inject/internal/UnmodifiableIterator;
    invoke-static {}, Lcom/google/inject/internal/ImmutableCollection;->access$100()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableCollection$EmptyImmutableCollection;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    # getter for: Lcom/google/inject/internal/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;
    invoke-static {}, Lcom/google/inject/internal/ImmutableCollection;->access$200()[Ljava/lang/Object;

    move-result-object v0

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
    .line 200
    array-length v0, p1

    if-lez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 203
    :cond_0
    return-object p1
.end method
