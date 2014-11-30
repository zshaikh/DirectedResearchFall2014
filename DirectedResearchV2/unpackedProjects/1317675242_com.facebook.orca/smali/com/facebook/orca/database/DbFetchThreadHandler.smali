.class public Lcom/facebook/orca/database/DbFetchThreadHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadHandler.java"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final c:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

.field private final d:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final e:Lcom/facebook/orca/database/DbAttachmentSerialization;

.field private final f:Lcom/facebook/orca/database/DbSharesSerialization;

.field private final g:Lcom/facebook/orca/database/DbCoordinatesSerialization;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "action_id"

    aput-object v1, v0, v4

    const-string v1, "refetch_action_id"

    aput-object v1, v0, v5

    const-string v1, "last_visible_action_id"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

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

    const/16 v1, 0x14

    const-string v2, "last_fetch_time_ms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->h:[Ljava/lang/String;

    .line 284
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "msg_id"

    aput-object v1, v0, v4

    const-string v1, "action_id"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "sender"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timestamp_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "affected_users"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "shares"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "coordinates"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "offline_threading_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_non_authoritative"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 54
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    .line 55
    iput-object p4, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 56
    iput-object p5, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->e:Lcom/facebook/orca/database/DbAttachmentSerialization;

    .line 57
    iput-object p6, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->f:Lcom/facebook/orca/database/DbSharesSerialization;

    .line 58
    iput-object p7, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->g:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;
    .locals 26

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "threads"

    sget-object v5, Lcom/facebook/orca/database/DbFetchThreadHandler;->h:[Ljava/lang/String;

    const-string v6, "thread_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 216
    :try_start_0
    const-string v4, "thread_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 217
    const-string v5, "action_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 218
    const-string v6, "refetch_action_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 219
    const-string v7, "last_visible_action_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 220
    const-string v8, "name"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 221
    const-string v9, "participants"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 222
    const-string v10, "former_participants"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 223
    const-string v11, "object_participants"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 224
    const-string v12, "senders"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 225
    const-string v13, "single_recipient_thread"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 226
    const-string v14, "snippet"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 227
    const-string v15, "snippet_sender"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 228
    const-string v16, "admin_snippet"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 229
    const-string v17, "timestamp_ms"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 230
    const-string v18, "unread"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 231
    const-string v19, "pic_hash"

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 232
    const-string v20, "can_reply_to"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 233
    const-string v21, "pic"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 234
    const-string v22, "single_recipient_id"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 235
    const-string v23, "last_fetch_time_ms"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 236
    const-string v24, "is_subscribed"

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 239
    new-instance v25, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct/range {v25 .. v25}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 240
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 241
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v25

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 242
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v25

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 243
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v25

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 244
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object v4, v0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object v4, v0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object v4, v0

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object v4, v0

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object v4, v0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 261
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 262
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 263
    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 264
    move-object v0, v3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v25

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 265
    move-object v0, v3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 266
    move-object v0, v3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 267
    move-object v0, v3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 268
    move-object v0, v3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    move-object v0, v3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 271
    :cond_1
    move-object v0, v3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 272
    move-object v0, v3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 274
    :cond_2
    move-object v0, v3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)V

    .line 275
    new-instance v4, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;

    invoke-virtual/range {v25 .. v25}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v5

    move-object v0, v3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;-><init>(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 280
    :goto_4
    return-object v3

    .line 261
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 265
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 267
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 274
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 278
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v3, 0x0

    goto :goto_4

    .line 278
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;I)Ljava/util/LinkedHashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;",
            "I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->a()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->b()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "messages"

    sget-object v5, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp_ms DESC"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 334
    :try_start_0
    const-string v4, "thread_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 335
    const-string v5, "msg_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 336
    const-string v6, "action_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 337
    const-string v7, "text"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 338
    const-string v8, "sender"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 339
    const-string v9, "timestamp_ms"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 340
    const-string v10, "msg_type"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 341
    const-string v11, "affected_users"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 342
    const-string v13, "attachments"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 343
    const-string v14, "shares"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 344
    const-string v15, "coordinates"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 345
    const-string v16, "offline_threading_id"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 346
    const-string v17, "source"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 347
    const-string v18, "is_non_authoritative"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 349
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 350
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 351
    move-object v0, v3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    .line 353
    :goto_1
    new-instance v21, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct/range {v21 .. v21}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v21, v0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v21, v0

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->e:Lcom/facebook/orca/database/DbAttachmentSerialization;

    move-object/from16 v21, v0

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/database/DbAttachmentSerialization;->a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->f:Lcom/facebook/orca/database/DbSharesSerialization;

    move-object/from16 v21, v0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->g:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    move-object/from16 v21, v0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/database/DbCoordinatesSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    move-object v0, v3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v20}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v19

    .line 377
    invoke-virtual/range {v19 .. v19}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 380
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 351
    :cond_0
    :try_start_1
    move-object v0, v3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 380
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 382
    return-object v12
.end method

.method private b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 313
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v0

    .line 314
    const-string v1, "thread_id"

    invoke-static {v1, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 315
    cmp-long v1, p2, v3

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "timestamp_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 318
    :cond_0
    cmp-long v1, p4, v3

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "timestamp_ms"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 321
    :cond_1
    invoke-direct {p0, v0, p6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;
    .locals 5

    .prologue
    .line 150
    invoke-direct/range {p0 .. p6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    new-instance v2, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v2, p1, v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 165
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/orca/server/FetchMoreMessagesResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0
.end method

.method a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const-wide/16 v2, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;

    move-result-object v7

    .line 65
    if-nez v7, :cond_0

    .line 66
    sget-object v0, Lcom/facebook/orca/server/FetchThreadResult;->a:Lcom/facebook/orca/server/FetchThreadResult;

    .line 114
    :goto_0
    return-object v0

    .line 68
    :cond_0
    iget-object v8, v7, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;->a:Lcom/facebook/orca/threads/ThreadSummary;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move v6, p2

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 74
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 75
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 76
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->w()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 79
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 85
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide v0, v2

    .line 88
    :goto_3
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-nez v2, :cond_5

    .line 91
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    move-object v1, v0

    .line 101
    :goto_4
    const/4 v0, 0x0

    .line 102
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v11

    .line 109
    :cond_3
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v2, v5, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 114
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    const/4 v5, 0x0

    iget-wide v6, v7, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;->b:J

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto/16 :goto_0

    .line 85
    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()J

    move-result-wide v0

    goto :goto_3

    .line 93
    :cond_5
    iget-object v2, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->b:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v2, v3, v11}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    move-object v1, v0

    goto :goto_4

    .line 96
    :cond_6
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    :goto_5
    move-object v1, v0

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_5
.end method

.method b(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 125
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v2, v6

    const-string v3, "single_recipient_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 133
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0, v1, p2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 139
    :goto_1
    return-object v0

    .line 133
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 139
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/FetchThreadResult;->a:Lcom/facebook/orca/server/FetchThreadResult;

    goto :goto_1

    :cond_1
    move-object v1, v5

    goto :goto_0
.end method
