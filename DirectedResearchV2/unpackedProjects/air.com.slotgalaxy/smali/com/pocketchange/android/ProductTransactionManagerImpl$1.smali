.class Lcom/pocketchange/android/ProductTransactionManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/ProductTransactionManagerImpl;->createTransaction(Ljava/lang/String;Ljava/lang/String;I)J
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/pocketchange/android/ProductTransactionManagerImpl;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/ProductTransactionManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->d:Lcom/pocketchange/android/ProductTransactionManagerImpl;

    iput-object p2, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 5

    .prologue
    .line 38
    const-string v0, "insert or ignore into product_transaction(remote_id,sku,quantity) values (?, ?, ?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 42
    const/4 v1, 0x3

    iget v2, p0, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 44
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v1, -0x1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/ProductTransactionManagerImpl$1;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
