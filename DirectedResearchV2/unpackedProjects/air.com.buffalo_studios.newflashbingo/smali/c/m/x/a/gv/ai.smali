.class public Lc/m/x/a/gv/ai;
.super Lc/m/x/a/gv/at;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc/m/x/a/gv/at",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lc/m/x/a/gv/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/m/x/a/gv/an",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/m/x/a/gv/at;-><init>()V

    return-void
.end method

.method private b()Lc/m/x/a/gv/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/m/x/a/gv/an",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/ai;->a:Lc/m/x/a/gv/an;

    if-nez v0, :cond_0

    new-instance v0, Lc/m/x/a/gv/aj;

    invoke-direct {v0, p0}, Lc/m/x/a/gv/aj;-><init>(Lc/m/x/a/gv/ai;)V

    iput-object v0, p0, Lc/m/x/a/gv/ai;->a:Lc/m/x/a/gv/an;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ai;->a:Lc/m/x/a/gv/an;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/ai;->b()Lc/m/x/a/gv/an;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/an;->b:Lc/m/x/a/gv/ap;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/ap;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/ap;-><init>(Lc/m/x/a/gv/an;)V

    iput-object v1, v0, Lc/m/x/a/gv/an;->b:Lc/m/x/a/gv/ap;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/an;->b:Lc/m/x/a/gv/ap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/ai;->b()Lc/m/x/a/gv/an;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/an;->c:Lc/m/x/a/gv/aq;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/aq;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/aq;-><init>(Lc/m/x/a/gv/an;)V

    iput-object v1, v0, Lc/m/x/a/gv/an;->c:Lc/m/x/a/gv/aq;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/an;->c:Lc/m/x/a/gv/aq;

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

    iget v0, p0, Lc/m/x/a/gv/ai;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc/m/x/a/gv/ai;->a(I)V

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lc/m/x/a/gv/ai;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lc/m/x/a/gv/ai;->b()Lc/m/x/a/gv/an;

    move-result-object v0

    iget-object v1, v0, Lc/m/x/a/gv/an;->d:Lc/m/x/a/gv/as;

    if-nez v1, :cond_0

    new-instance v1, Lc/m/x/a/gv/as;

    invoke-direct {v1, v0}, Lc/m/x/a/gv/as;-><init>(Lc/m/x/a/gv/an;)V

    iput-object v1, v0, Lc/m/x/a/gv/an;->d:Lc/m/x/a/gv/as;

    :cond_0
    iget-object v0, v0, Lc/m/x/a/gv/an;->d:Lc/m/x/a/gv/as;

    return-object v0
.end method
