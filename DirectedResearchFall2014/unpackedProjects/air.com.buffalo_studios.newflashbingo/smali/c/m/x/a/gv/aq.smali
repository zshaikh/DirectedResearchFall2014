.class final Lc/m/x/a/gv/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/m/x/a/gv/an;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/an;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

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
            "<+TK;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->c()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/an;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lc/m/x/a/gv/an;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v3

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v2, v0, v3}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lc/m/x/a/gv/ao;

    iget-object v1, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/m/x/a/gv/ao;-><init>(Lc/m/x/a/gv/an;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/an;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/an;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    invoke-virtual {v0}, Lc/m/x/a/gv/an;->a()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/an;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aq;->a:Lc/m/x/a/gv/an;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc/m/x/a/gv/an;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
