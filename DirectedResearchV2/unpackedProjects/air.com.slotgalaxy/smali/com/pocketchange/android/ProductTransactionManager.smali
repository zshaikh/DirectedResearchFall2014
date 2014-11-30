.class public interface abstract Lcom/pocketchange/android/ProductTransactionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createTransaction(Ljava/lang/String;Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract getMaxTransactionId()J
.end method

.method public abstract getQuantityPurchasedBySku()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
