.class public Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;
.super Ljava/lang/Object;
.source "ThreadSummaryDeserializer.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    .line 33
    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Lorg/codehaus/jackson/JsonNode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 128
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->b(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    .line 142
    invoke-static {v1, v2}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 147
    :goto_0
    new-instance v2, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    sget-object v1, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 37
    const-string v1, "thread_id"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 39
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    .line 40
    const-string v4, "action_id"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v4

    .line 41
    invoke-virtual {v0, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 43
    const-string v2, "snippet"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "snippet"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 46
    :cond_0
    const-string v2, "refetch_action_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 47
    const-string v2, "refetch_action_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 51
    :goto_0
    const-string v2, "last_visible_add_action_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 52
    const-string v2, "last_visible_add_action_id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 56
    :goto_1
    const-string v2, "unread"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 59
    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 60
    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 64
    :goto_2
    const-string v3, "pic_hash"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const-string v3, "pic_hash"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 68
    :cond_1
    const-string v3, "participants"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-direct {p0, v3, v2, v1}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 70
    const-string v4, "former_participants"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-direct {p0, v4, v2, v1}, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    const-string v4, "object_participants"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 75
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 76
    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 78
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    const-string v3, "senders"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 82
    const-string v1, "single_recipient"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_a

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 84
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 86
    const-string v1, "pic"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "pic"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 90
    :cond_2
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 95
    :cond_3
    const-string v1, "is_subscribed"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)V

    .line 98
    const-string v3, "snippet_sender"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;->a:Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    const-string v4, "snippet_sender"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 104
    :cond_4
    const-string v3, "admin_snippet"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    const-string v3, "admin_snippet"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 109
    :cond_5
    const-string v3, "can_reply"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v3

    .line 110
    if-nez v1, :cond_b

    move v1, v6

    .line 113
    :goto_4
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lez v2, :cond_6

    move v1, v6

    .line 117
    :cond_6
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 119
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0

    .line 49
    :cond_7
    invoke-virtual {v0, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    goto/16 :goto_0

    .line 54
    :cond_8
    invoke-virtual {v0, v4, v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    goto/16 :goto_1

    .line 62
    :cond_9
    sget-object v2, Lorg/codehaus/jackson/node/NullNode;->a:Lorg/codehaus/jackson/node/NullNode;

    goto/16 :goto_2

    :cond_a
    move v3, v6

    .line 83
    goto/16 :goto_3

    :cond_b
    move v1, v3

    goto :goto_4
.end method

.method public a(Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;)V
    .locals 6

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    const-string v1, "object_participants"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 167
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 169
    const-string v4, "object_address_type"

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v4

    .line 170
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 171
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    if-nez v0, :cond_3

    .line 190
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 183
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    const-string v0, "name"

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 186
    const-string v0, "pic"

    const-string v1, "pic_big"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_1
.end method
