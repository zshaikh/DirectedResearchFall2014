.class public Lcom/pocketchange/android/ProductTransactionManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/ProductTransactionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/ProductTransactionManagerImpl$TransactionTable;,
        Lcom/pocketchange/android/ProductTransactionManagerImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v1, Lcom/pocketchange/android/ProductTransactionManagerImpl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pocketchange/android/ProductTransactionManagerImpl$a;-><init>(Landroid/content/Context;Lcom/pocketchange/android/ProductTransactionManagerImpl$1;)V

    invoke-direct {v0, v1}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public createTransaction(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3
    .param p1, "remoteId"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-string v1, ""

    .line 27
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteId must be a non-empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sku must be a non-empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_3
    const/4 v0, 0x1

    if-ge p3, v0, :cond_4

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quantity [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (must be positive)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v1, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;-><init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/pocketchange/android/ProductTransactionManagerImpl;
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionId()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v1, Lcom/pocketchange/android/ProductTransactionManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/pocketchange/android/ProductTransactionManagerImpl$2;-><init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuantityPurchasedBySku()Ljava/util/Map;
    .locals 2
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

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v1, Lcom/pocketchange/android/ProductTransactionManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/pocketchange/android/ProductTransactionManagerImpl$3;-><init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
