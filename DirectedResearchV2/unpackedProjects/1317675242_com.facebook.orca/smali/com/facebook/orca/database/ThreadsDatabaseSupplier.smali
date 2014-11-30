.class public Lcom/facebook/orca/database/ThreadsDatabaseSupplier;
.super Ljava/lang/Object;
.source "ThreadsDatabaseSupplier.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/database/ThreadsDbOpenHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/ThreadsDbOpenHelper;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a:Lcom/facebook/orca/database/ThreadsDbOpenHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a:Lcom/facebook/orca/database/ThreadsDbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a:Lcom/facebook/orca/database/ThreadsDbOpenHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/ThreadsDbOpenHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
