.class Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;
.super Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.source "MessageDecoder.java"


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p3}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;I)V

    .line 200
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 206
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->h(Ljava/io/DataInputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    .line 227
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 236
    :goto_0
    iget v4, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v4, :cond_2

    .line 237
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 240
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_2
    new-instance v5, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;-><init>()V

    .line 245
    invoke-virtual {v5, v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    .line 246
    invoke-virtual {v5, v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    .line 247
    invoke-virtual {v5, v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    .line 248
    invoke-virtual {v5, v4}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    .line 249
    invoke-virtual {v5, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;

    .line 250
    invoke-virtual {v5}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayloadBuilder;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v5

    goto :goto_2

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v0, v5

    move-object v4, v5

    goto :goto_2

    :cond_3
    move-object v2, v5

    move-object v3, v5

    goto :goto_0
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;
    .locals 5

    .prologue
    .line 254
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    :goto_0
    iget v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 258
    iget v3, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 259
    new-instance v3, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    :goto_0
    iget v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, -0x4

    .line 268
    iget v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_0
    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubscribePayload;
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    :goto_0
    iget v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private h(Ljava/io/DataInputStream;)[B
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    new-array v0, v0, [B

    .line 285
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 287
    return-object v0
.end method
