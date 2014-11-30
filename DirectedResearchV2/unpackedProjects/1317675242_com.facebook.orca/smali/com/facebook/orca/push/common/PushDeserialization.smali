.class public Lcom/facebook/orca/push/common/PushDeserialization;
.super Ljava/lang/Object;
.source "PushDeserialization.java"


# static fields
.field private static e:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

.field private final d:Lcom/facebook/orca/cache/SendMessageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/orca/push/common/PushDeserialization;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/google/inject/Provider;Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;Lcom/facebook/orca/cache/SendMessageManager;)V
    .locals 0
    .param p2    # Lcom/google/inject/Provider;
        .annotation runtime Lcom/facebook/orca/annotations/MeUser;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;",
            "Lcom/facebook/orca/cache/SendMessageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->a:Lcom/facebook/orca/cache/DataCache;

    .line 42
    iput-object p2, p0, Lcom/facebook/orca/push/common/PushDeserialization;->b:Lcom/google/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/facebook/orca/push/common/PushDeserialization;->c:Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    .line 44
    iput-object p4, p0, Lcom/facebook/orca/push/common/PushDeserialization;->d:Lcom/facebook/orca/cache/SendMessageManager;

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;
    .locals 7

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/orca/push/common/PushDeserialization;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/User;

    .line 191
    new-instance v0, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 196
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v1

    sget-object v5, Lcom/facebook/orca/push/common/PushDeserialization;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    new-instance v6, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v6}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v6, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SEND:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v12, 0x1

    .line 48
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v4

    .line 73
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 55
    array-length v2, v1

    if-eq v2, v3, :cond_1

    move-object v0, v4

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 60
    aget-object v1, v1, v12

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v3, "unified_tid"

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/threads/MessagingIdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "n"

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v5, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@facebook.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v2}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 72
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v6

    sget-object v0, Lcom/facebook/orca/push/common/PushDeserialization;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 73
    new-instance v0, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->C2DM:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 88
    const-string v0, "sender_fbid"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v9

    .line 114
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "tid"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, "mid"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v4, "offline_threading_id"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v5, "sender_name"

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    .line 99
    new-instance v6, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@facebook.com"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v5}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/push/common/PushDeserialization;->c:Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    const-string v5, "coordinates"

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 111
    :goto_1
    iget-object v5, p0, Lcom/facebook/orca/push/common/PushDeserialization;->d:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v5, v4}, Lcom/facebook/orca/cache/SendMessageManager;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "mobile"

    .line 112
    :goto_2
    const-string v7, "timestamp"

    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v7

    .line 113
    const-wide/32 v9, 0xf4240

    mul-long/2addr v9, v7

    sget-object v11, Lcom/facebook/orca/push/common/PushDeserialization;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 114
    new-instance v11, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v11}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v11, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MQTT_MESSAGE:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move-object v5, v9

    .line 111
    goto :goto_2

    :cond_2
    move-object v0, v9

    goto :goto_1
.end method

.method public b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 130
    const-string v0, "sender_fbid"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v0, "0"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 168
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/common/PushDeserialization;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->e()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v7

    .line 146
    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "offline_threading_id"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 152
    new-instance v4, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@facebook.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sender_name"

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "coordinates"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/push/common/PushDeserialization;->c:Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    const-string v5, "coordinates"

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    .line 164
    :goto_2
    iget-object v5, p0, Lcom/facebook/orca/push/common/PushDeserialization;->d:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v5, v3}, Lcom/facebook/orca/cache/SendMessageManager;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "mobile"

    .line 165
    :goto_3
    const-string v6, "timestamp"

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v6

    .line 166
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v6

    sget-object v10, Lcom/facebook/orca/push/common/PushDeserialization;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 167
    const-string v10, "mid"

    invoke-virtual {p1, v10}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v10

    .line 168
    new-instance v11, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v11}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v11, v10}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MQTT_CHAT:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move-object v5, v7

    .line 164
    goto :goto_3

    :cond_4
    move-object v1, v7

    goto :goto_2

    :cond_5
    move-object v0, v7

    goto/16 :goto_1
.end method
