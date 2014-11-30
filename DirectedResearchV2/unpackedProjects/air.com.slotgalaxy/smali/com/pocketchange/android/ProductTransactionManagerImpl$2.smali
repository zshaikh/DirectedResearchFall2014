.class Lcom/pocketchange/android/ProductTransactionManagerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/ProductTransactionManagerImpl;->getMaxTransactionId()J
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/ProductTransactionManagerImpl;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$2;->a:Lcom/pocketchange/android/ProductTransactionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    const-string v1, "product_transaction"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v7, "_id desc"

    const-string v8, "1"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 57
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/ProductTransactionManagerImpl$2;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
