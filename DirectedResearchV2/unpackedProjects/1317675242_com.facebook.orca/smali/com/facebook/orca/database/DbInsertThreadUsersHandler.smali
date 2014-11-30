.class public Lcom/facebook/orca/database/DbInsertThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertThreadUsersHandler.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/facebook/orca/users/UserSerialization;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "orca:DbInsertUsersHandler"

    iput-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 33
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 38
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 40
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 41
    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    const-string v4, "first_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v4, "last_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    const-string v3, "pic_big"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "pic_square"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 53
    const-string v3, "pic_crop"

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "thread_users"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    const-string v1, "orca:DbInsertUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 58
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    return-void
.end method
