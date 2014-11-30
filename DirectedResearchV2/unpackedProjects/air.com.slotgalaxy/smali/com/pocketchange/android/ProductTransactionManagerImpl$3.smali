.class Lcom/pocketchange/android/ProductTransactionManagerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/ProductTransactionManagerImpl;->getQuantityPurchasedBySku()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/ProductTransactionManagerImpl;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$3;->a:Lcom/pocketchange/android/ProductTransactionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "sku"

    .line 68
    const-string v1, "product_transaction"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sku"

    aput-object v5, v2, v4

    const-string v0, "SUM(quantity)"

    aput-object v0, v2, v6

    const-string v0, "sku"

    move-object v0, p1

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v3

    .line 71
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/ProductTransactionManagerImpl$3;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
