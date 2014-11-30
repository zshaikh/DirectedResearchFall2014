.class public abstract Lcom/google/common/collect/ForwardingMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

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
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected abstract a()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected a_(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/ForwardingMultiset;->b(Ljava/lang/Object;I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingMultiset;->a(Ljava/lang/Object;I)I

    .line 154
    return v0
.end method

.method protected c(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z

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
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
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
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method protected f()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
