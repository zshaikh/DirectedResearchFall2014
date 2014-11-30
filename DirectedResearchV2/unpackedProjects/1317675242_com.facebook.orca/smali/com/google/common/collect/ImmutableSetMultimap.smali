.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


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
        "Lcom/google/common/collect/ImmutableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TV;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V
    .locals 1
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;I",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 333
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->a:Lcom/google/common/collect/ImmutableSortedSet;

    .line 335
    return-void

    .line 333
    :cond_0
    invoke-static {p3}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableSet;
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
    .line 385
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->d:Lcom/google/common/collect/ImmutableSet;

    .line 386
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->d()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->d:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 348
    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->a:Lcom/google/common/collect/ImmutableSortedSet;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->a:Lcom/google/common/collect/ImmutableSortedSet;

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
