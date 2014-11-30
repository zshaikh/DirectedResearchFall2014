.class public Lcom/facebook/orca/database/DbFetchThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadUsersHandler.java"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 39
    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    const-string v0, "DbFetchThreadUsersHandler.doThreadUsersQuery"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 57
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v9

    .line 59
    if-eqz p1, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "thread_users"

    sget-object v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 64
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/facebook/orca/users/Name;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 70
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 71
    iget-object v5, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v5, v3}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    .line 74
    :goto_2
    new-instance v5, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v6, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v5, v6, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 81
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1

    .line 83
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v1

    :cond_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto/16 :goto_0
.end method
