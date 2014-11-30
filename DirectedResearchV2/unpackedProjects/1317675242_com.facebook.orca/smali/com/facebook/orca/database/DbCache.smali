.class public Lcom/facebook/orca/database/DbCache;
.super Ljava/lang/Object;
.source "DbCache.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/database/DbCache;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v10

    const-string v0, "action_id"

    aput-object v0, v2, v11

    const-string v0, "last_visible_action_id"

    aput-object v0, v2, v1

    .line 84
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v12

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    const-string v7, "timestamp_ms DESC"

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    const-string v1, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 92
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 93
    new-instance v4, Lcom/facebook/orca/database/DbCache$OutOfDateThread;

    invoke-direct/range {v4 .. v9}, Lcom/facebook/orca/database/DbCache$OutOfDateThread;-><init>(Ljava/lang/String;JJ)V

    .line 94
    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v6, v10

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/database/DbCache$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/database/DbCache$1;-><init>(Lcom/facebook/orca/database/DbCache;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    iget-object v4, p0, Lcom/facebook/orca/database/DbCache;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v12, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 124
    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    iget-object v3, p0, Lcom/facebook/orca/database/DbCache;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v3

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->a()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 140
    :cond_4
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
