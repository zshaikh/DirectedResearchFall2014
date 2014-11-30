.class final Lcom/google/common/collect/Maps$2;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Maps$EntryTransformer",
        "<TK;TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/Function;


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV2;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/common/collect/Maps$2;->a:Lcom/google/common/base/Function;

    invoke-interface {v0, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
