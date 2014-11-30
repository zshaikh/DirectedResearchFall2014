.class public interface abstract Lcom/jesusla/storekit/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract finishTransaction(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
.end method

.method public abstract requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
.end method

.method public abstract restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
.end method
