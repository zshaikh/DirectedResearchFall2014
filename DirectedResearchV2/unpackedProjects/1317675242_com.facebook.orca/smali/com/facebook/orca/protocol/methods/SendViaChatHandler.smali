.class public Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
.super Ljava/lang/Object;
.source "SendViaChatHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/push/common/PushDeserialization;

.field private final c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)Lcom/facebook/orca/server/SendMessageResult;
    .locals 11

    .prologue
    const-wide/16 v9, 0x1388

    const/4 v6, 0x0

    .line 49
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 52
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 57
    :goto_0
    const-string v2, "to"

    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "body"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 60
    const-string v1, "msgid"

    invoke-virtual {v0, v1, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "coordinates"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Lcom/facebook/orca/threads/Message;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 66
    :cond_0
    new-instance v1, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;

    invoke-direct {v1, p0, v3, v4}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;-><init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;J)V

    .line 67
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v5, "/send_message_response"

    invoke-virtual {v2, v5, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    .line 69
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 70
    add-long/2addr v7, v9

    .line 71
    const-wide/16 v9, 0x1388

    .line 72
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v5, "/send_message2"

    invoke-virtual {v2, v5, v0, v9, v10}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;J)Z

    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to send via MQTT (publish failed)"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v3, "/send_message_response"

    invoke-virtual {v2, v3, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    throw v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 78
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to send via MQTT (timed out after publish)"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    invoke-virtual {v1, v7, v8}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to send via MQTT (timed out waiting for response)"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_4
    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to send via MQTT (server returned failure"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/send_message_response"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Lcom/facebook/orca/location/Coordinates;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;

    move-result-object v5

    .line 107
    new-instance v2, Lcom/facebook/orca/server/SendMessageResult;

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/facebook/orca/server/SendMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;JZ)V

    return-object v2
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
