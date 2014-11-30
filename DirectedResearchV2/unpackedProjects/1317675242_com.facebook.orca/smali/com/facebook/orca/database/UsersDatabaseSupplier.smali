.class public Lcom/facebook/orca/database/UsersDatabaseSupplier;
.super Ljava/lang/Object;
.source "UsersDatabaseSupplier.java"

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


# instance fields
.field private final a:Lcom/facebook/orca/database/UsersDbOpenHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/UsersDbOpenHelper;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a:Lcom/facebook/orca/database/UsersDbOpenHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a:Lcom/facebook/orca/database/UsersDbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a:Lcom/facebook/orca/database/UsersDbOpenHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/UsersDbOpenHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
