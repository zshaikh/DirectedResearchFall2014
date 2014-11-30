.class public Lcom/facebook/orca/database/DbParticipantsSerialization;
.super Ljava/lang/Object;
.source "DbParticipantsSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/facebook/orca/threads/ParticipantInfo;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadParticipant;)Lorg/codehaus/jackson/JsonNode;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 115
    const-string v1, "email"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->g()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "mute"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->g()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 123
    :cond_1
    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/facebook/orca/threads/ParticipantInfo;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    .line 133
    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 136
    :cond_0
    new-instance v2, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/ParticipantInfo;)Lorg/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 48
    const-string v1, "email"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 41
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 84
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 67
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lcom/facebook/orca/threads/ThreadParticipant;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 100
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
