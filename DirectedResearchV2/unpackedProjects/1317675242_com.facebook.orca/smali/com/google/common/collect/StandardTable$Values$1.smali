.class Lcom/google/common/collect/StandardTable$Values$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/StandardTable$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Values;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Values$1;->b:Lcom/google/common/collect/StandardTable$Values;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Values$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Table$Cell;

    invoke-interface {p0}, Lcom/google/common/collect/Table$Cell;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 857
    return-void
.end method
