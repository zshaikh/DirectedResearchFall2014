.class public Lcom/facebook/orca/database/DbFetchThreadsHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadsHandler.java"


# static fields
.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

.field private final c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final d:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final e:Lcom/facebook/orca/database/DbAttachmentSerialization;

.field private final f:Lcom/facebook/orca/database/DbCoordinatesSerialization;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "action_id"

    aput-object v1, v0, v4

    const-string v1, "refetch_action_id"

    aput-object v1, v0, v5

    const-string v1, "last_visible_action_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "participants"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "former_participants"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object_participants"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "senders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "single_recipient_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "single_recipient_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snippet_sender"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "admin_snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "timestamp_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pic_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "can_reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pic"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_subscribed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->g:[Ljava/lang/String;

    .line 285
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "unread_count"

    aput-object v1, v0, v3

    const-string v1, "unseen_count"

    aput-object v1, v0, v4

    const-string v1, "last_seen_time"

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    .line 55
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 56
    iput-object p4, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 57
    iput-object p5, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->e:Lcom/facebook/orca/database/DbAttachmentSerialization;

    .line 58
    iput-object p6, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->f:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    .line 59
    return-void
.end method

.method private a()Lcom/facebook/orca/threads/FolderCounts;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 292
    const-string v0, "DbFetchThreadsHandler.getFolderCounts"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 293
    const-string v3, "folder=\'inbox\'"

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folder_counts"

    sget-object v2, Lcom/facebook/orca/database/DbFetchThreadsHandler;->h:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 297
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Lcom/facebook/orca/threads/FolderCounts;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    :goto_0
    return-object v0

    .line 305
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1
.end method

.method private a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;I)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 276
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    const/4 v2, 0x0

    .line 278
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v2, p2, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(JI)Ljava/util/LinkedHashMap;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const-string v3, "DbFetchThreadsHandler.doThreadsQuery"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v12

    .line 197
    const/4 v3, 0x0

    .line 198
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_7

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timestamp_ms <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 202
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v13

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "threads"

    sget-object v5, Lcom/facebook/orca/database/DbFetchThreadsHandler;->g:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp_ms DESC"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 206
    const-string v4, "thread_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 207
    const-string v5, "action_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 208
    const-string v6, "refetch_action_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 209
    const-string v7, "last_visible_action_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 210
    const-string v8, "name"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 211
    const-string v9, "participants"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 212
    const-string v10, "former_participants"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 213
    const-string v11, "object_participants"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 214
    const-string v14, "senders"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 215
    const-string v15, "single_recipient_thread"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 216
    const-string v16, "snippet"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 217
    const-string v17, "snippet_sender"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 218
    const-string v18, "admin_snippet"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 219
    const-string v19, "timestamp_ms"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 220
    const-string v20, "unread"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 221
    const-string v21, "pic_hash"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 222
    const-string v22, "can_reply_to"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 223
    const-string v23, "pic"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 224
    const-string v24, "single_recipient_id"

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 225
    const-string v25, "is_subscribed"

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 228
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 229
    new-instance v26, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct/range {v26 .. v26}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 230
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 231
    invoke-virtual/range {v26 .. v27}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 232
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 233
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 234
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 235
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_0

    .line 236
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v28, v0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v28, v0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v28, v0

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v28, v0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v28, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 253
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_2

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 254
    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 255
    move-object v0, v3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 256
    move-object v0, v3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 257
    move-object v0, v3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    const/16 v28, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 258
    move-object v0, v3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 259
    move-object v0, v3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 260
    move-object v0, v3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_1

    .line 261
    move-object v0, v3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 263
    :cond_1
    move-object v0, v3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 264
    move-object v0, v3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)V

    .line 265
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v26

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 268
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 253
    :cond_2
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 257
    :cond_3
    const/16 v28, 0x0

    goto :goto_3

    .line 259
    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    .line 264
    :cond_5
    const/16 v28, 0x0

    goto :goto_5

    .line 268
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 270
    invoke-virtual {v12}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 271
    return-object v13

    :cond_7
    move-object v6, v3

    goto/16 :goto_0
.end method

.method private a(Ljava/util/LinkedHashMap;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 123
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->w()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_4
    return-object v1
.end method


# virtual methods
.method a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v4

    .line 143
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(JI)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    .line 148
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 151
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 156
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 159
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0
.end method

.method a(Lcom/facebook/orca/server/FetchThreadsParams;)Lcom/facebook/orca/server/FetchThreadsResult;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 63
    const-string v0, "DbFetchThreadsHandler.fetchThreadsFromDb"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v12

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v8

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Z)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v10

    .line 72
    cmp-long v1, v8, v5

    if-nez v1, :cond_0

    .line 74
    sget-object v0, Lcom/facebook/orca/server/FetchThreadsResult;->a:Lcom/facebook/orca/server/FetchThreadsResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v12}, Lcom/facebook/orca/debug/Tracer;->c()J

    :goto_0
    return-object v0

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    move-object v1, v0

    .line 85
    :goto_1
    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsParams;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(JI)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/LinkedHashMap;)Ljava/util/Set;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 93
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v13

    .line 99
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsParams;->c()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 101
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v2, v0, v4}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v5

    .line 105
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v12}, Lcom/facebook/orca/debug/Tracer;->c()J

    goto :goto_0

    .line 81
    :cond_1
    :try_start_2
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    :cond_2
    move v4, v7

    goto :goto_2
.end method
