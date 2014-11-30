.class public Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;
    }
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "openHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock",
            "<TResult;>;)TResult;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "stmts":Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;, "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock<TResult;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;Z)Ljava/lang/Object;
    .locals 2
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock",
            "<TResult;>;Z)TResult;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "stmts":Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;, "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock<TResult;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 20
    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;->withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 22
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 18
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
