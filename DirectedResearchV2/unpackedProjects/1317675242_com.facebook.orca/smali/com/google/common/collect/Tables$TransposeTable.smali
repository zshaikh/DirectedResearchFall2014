.class Lcom/google/common/collect/Tables$TransposeTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransposeTable",
            "<TC;TR;TV;>.CellSet;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$1;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$TransposeTable$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables$TransposeTable;->c:Lcom/google/common/base/Function;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/common/collect/Tables$TransposeTable;->c:Lcom/google/common/base/Function;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TC;TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->b:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .line 269
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransposeTable;)V

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->b:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    if-ne p1, p0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    .line 238
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Table;

    if-eqz v0, :cond_1

    .line 239
    check-cast p1, Lcom/google/common/collect/Table;

    .line 240
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 242
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
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->a:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Map;
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
    .line 160
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->a:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
