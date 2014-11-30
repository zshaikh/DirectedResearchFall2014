.class public Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;
.super Ljava/lang/Object;
.source "FetchThreadsFqlHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

.field private final b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

.field private final c:Lcom/facebook/orca/users/UserSerialization;

.field private final d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/protocol/methods/MessageDeserializer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 39
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    .line 40
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;
    .locals 4

    .prologue
    .line 237
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing messages"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 242
    if-nez v1, :cond_1

    .line 243
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing actions"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-virtual {v2, v0, v1, p2}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 247
    new-instance v3, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v0

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;-><init>(Lcom/google/common/collect/ImmutableList;I)V

    return-object v3
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;
    .locals 14

    .prologue
    .line 166
    const-string v2, "threads"

    invoke-virtual {p1, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 167
    if-nez v6, :cond_0

    .line 168
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid api response - missing threads"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    const-string v2, "users"

    invoke-virtual {p1, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 171
    const-string v2, "participant_profiles"

    invoke-virtual {p1, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 172
    const-string v2, "object_participant_profiles"

    invoke-virtual {p1, v2}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    .line 173
    if-nez v5, :cond_1

    .line 174
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid api response - missing users"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1
    if-nez v9, :cond_2

    .line 177
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid api response - missing participant_profiles"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_2
    if-nez v10, :cond_3

    .line 180
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid api response - missing object_participant_profiles"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 184
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 185
    const-wide/16 v7, -0x1

    .line 186
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v11, v2, :cond_6

    move v0, v11

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 187
    invoke-virtual {v6, v11}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 188
    iget-object v12, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/node/ObjectNode;

    move-object p1, v0

    invoke-virtual {v12, p1, v10}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;)V

    .line 190
    const-string v12, "action_id"

    invoke-virtual {v2, v12}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v12

    invoke-static {v12}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v12

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 191
    if-eqz p2, :cond_5

    .line 192
    const-string v12, "sync_change_type"

    invoke-virtual {v2, v12}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v12

    invoke-static {v12}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v12

    .line 193
    const-string v13, "deleted"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 194
    const-string v12, "thread_id"

    invoke-virtual {v2, v12}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 186
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 196
    :cond_4
    iget-object v12, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {v12, v2}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 197
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 200
    :cond_5
    iget-object v12, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a:Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {v12, v2}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 201
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 205
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 208
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    const/4 v11, 0x2

    new-array v11, v11, [Lorg/codehaus/jackson/JsonNode;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v10, v11, v9

    invoke-virtual {v2, v11}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a([Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 210
    iget-object v9, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v9, v5, v2}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 211
    iget-object v5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    sget-object v9, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v5, v9, v2}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 213
    new-instance v2, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v6

    invoke-direct/range {v2 .. v8}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IJ)V

    return-object v2
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/users/User;
    .locals 3

    .prologue
    .line 264
    const-string v0, "canonical_thread_user"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 265
    const-string v1, "canonical_thread_profile"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 266
    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing users"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    if-nez v1, :cond_1

    .line 270
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing participant_profiles"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b:Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c:Lcom/facebook/orca/users/UserSerialization;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 276
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response -- multiple users"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 278
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to find user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    return-object p0
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V
    .locals 2

    .prologue
    .line 127
    const-string v0, "inbox_counts"

    const-string v1, "SELECT unread_count, unseen_count, last_seen_time, total_threads, last_action_id FROM unified_message_count WHERE folder=\'inbox\'"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v0, "canonical_thread_profile"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id = %1$s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "canonical_thread_user"

    const-string v1, "SELECT uid, first_name, last_name FROM user WHERE uid = %1$s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5

    .prologue
    .line 48
    if-eqz p5, :cond_0

    const-string v0, "unified_thread_sync"

    .line 49
    :goto_0
    const-string v1, "threads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT thread_id, senders, participants, former_participants, object_participants, single_recipient, snippet, unread, action_id, last_visible_add_action_id, timestamp, name, pic_hash, mute, can_reply, snippet_sender, is_subscribed, admin_snippet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_1

    const-string v3, ", sync_change_type "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM %1$s WHERE %2$s ORDER BY %3$s LIMIT %4$d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "participant_profiles"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id in (SELECT participants.user_id FROM #threads)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "object_participant_profiles"

    const-string v1, "SELECT id, name, type, pic_big, pic_square, pic_crop FROM profile WHERE id in (SELECT object_participants.id FROM #threads)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "users"

    const-string v1, "SELECT uid, first_name, last_name FROM user WHERE uid IN (SELECT participants.user_id FROM #threads)"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 48
    :cond_0
    const-string v0, "unified_thread"

    goto :goto_0

    .line 49
    :cond_1
    const-string v3, " "

    goto :goto_1
.end method

.method b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;
    .locals 3

    .prologue
    .line 253
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing messages"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d:Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-static {}, Lorg/codehaus/jackson/node/NullNode;->A()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 259
    new-instance v2, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;-><init>(Lcom/google/common/collect/ImmutableList;I)V

    return-object v2
.end method

.method b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 6

    .prologue
    .line 284
    const-string v0, "inbox_counts"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing inbox counts"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 289
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing inbox counts"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/facebook/orca/threads/FolderCounts;

    const-string v2, "unread_count"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v2

    const-string v3, "unseen_count"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    const-string v4, "last_seen_time"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    int-to-long v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJ)V

    return-object v1
.end method

.method b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V
    .locals 2

    .prologue
    .line 134
    const-string v0, "user_settings"

    const-string v1, "SELECT setting, value FROM user_settings WHERE project=\'messaging\'"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 86
    const-string v0, "messages"

    const-string v1, "SELECT thread_id, message_id, action_id, body, sender, unread, recipients, timestamp, attachment_map, share_map, coordinates, log_message, offline_threading_id, tags FROM unified_message WHERE %1$s ORDER BY %2$s LIMIT %3$d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method c(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/notify/NotificationSetting;
    .locals 5

    .prologue
    .line 299
    const-string v0, "user_settings"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 300
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing user settings"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 304
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 305
    const-string v3, "mute_until"

    const-string v4, "setting"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    const-string v0, "value"

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 309
    :goto_1
    return-object v0

    .line 303
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 102
    const-string v0, "actions"

    const-string v1, "SELECT thread_id, action_id, type, actor, users, timestamp, body FROM unified_thread_action WHERE %1$s ORDER BY %2$s LIMIT %3$d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
