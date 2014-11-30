.class Lcom/google/common/collect/StandardTable;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/google/common/collect/StandardTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.CellSet;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/StandardTable$RowKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.RowKeySet;"
        }
    .end annotation
.end field

.field private transient e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient f:Lcom/google/common/collect/StandardTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/StandardTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->b:Lcom/google/common/base/Supplier;

    .line 71
    return-void
.end method

.method static a(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1100
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1101
    new-instance v1, Lcom/google/common/collect/StandardTable$1;

    invoke-direct {v1, v0}, Lcom/google/common/collect/StandardTable$1;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1119
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1120
    new-instance v1, Lcom/google/common/collect/StandardTable$2;

    invoke-direct {v1, v0}, Lcom/google/common/collect/StandardTable$2;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method static synthetic b(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 215
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 161
    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->b:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-object v0
.end method

.method private f(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 198
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 210
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 126
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 128
    :cond_0
    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p1, :cond_0

    move v0, v2

    .line 92
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 88
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 80
    if-eqz p0, :cond_2

    invoke-static {p0, p2}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 116
    if-nez p0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->c:Lcom/google/common/collect/StandardTable$CellSet;

    .line 271
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$CellSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$CellSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->c:Lcom/google/common/collect/StandardTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 193
    :goto_0
    return-object v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 186
    if-nez v0, :cond_2

    move-object v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    .line 193
    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->d:Lcom/google/common/collect/StandardTable$RowKeySet;

    .line 688
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$RowKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->d:Lcom/google/common/collect/StandardTable$RowKeySet;

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->e:Ljava/util/Set;

    .line 723
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeySet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->e:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method e()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    if-ne p1, p0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Table;

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Lcom/google/common/collect/Table;

    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->f:Lcom/google/common/collect/StandardTable$RowMap;

    .line 870
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$RowMap;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->f:Lcom/google/common/collect/StandardTable$RowMap;

    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->g:Lcom/google/common/collect/StandardTable$ColumnMap;

    .line 948
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnMap;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->g:Lcom/google/common/collect/StandardTable$ColumnMap;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
