.class public Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient b:I

.field private transient c:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    .line 260
    iput p2, p0, Lcom/google/common/collect/ImmutableMultiset;->b:I

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 270
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$1;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
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
    .line 385
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->c:Lcom/google/common/collect/ImmutableSet;

    .line 386
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->c:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    if-ne p1, p0, :cond_0

    move v0, v4

    .line 364
    :goto_0
    return v0

    .line 352
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_4

    .line 353
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 354
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 358
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    if-eq v2, v0, :cond_2

    move v0, v3

    .line 359
    goto :goto_0

    :cond_3
    move v0, v4

    .line 362
    goto :goto_0

    :cond_4
    move v0, v3

    .line 364
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
