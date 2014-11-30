.class final Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Exception;",
        "TX;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;


# virtual methods
.method public a(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$3;->a(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
