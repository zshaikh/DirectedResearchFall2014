.class public Lcom/facebook/orca/database/DbInsertFriendUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertFriendUsersHandler.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/facebook/orca/users/UserSerialization;

.field private final d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

.field private final e:Lcom/facebook/orca/common/names/NameSplitter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "orca:DbInsertFriendUsersHandler"

    iput-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users_name_lookup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_1
    const-string v1, "orca:DbInsertFriendUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcom/facebook/orca/server/GetFriendsResult;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 65
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 66
    const-string v3, "fbid"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    const-string v4, "first_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "last_name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    const-string v3, "pic_big"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "pic_square"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v3

    .line 78
    const-string v4, "pic_crop"

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    const-string v3, "email_addresses"

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "phone_numbers"

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "rank"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->u()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 86
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-eq v3, v4, :cond_3

    .line 87
    const-string v3, "is_pushable"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "facebook_users"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 91
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/facebook/orca/common/names/NameSplitter;->a(I)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    const-string v1, "orca:DbInsertFriendUsersHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_4
    move v4, v6

    .line 87
    goto :goto_1

    .line 94
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    return-void
.end method
