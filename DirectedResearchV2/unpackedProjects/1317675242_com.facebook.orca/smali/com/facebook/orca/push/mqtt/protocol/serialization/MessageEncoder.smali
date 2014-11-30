.class public Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# instance fields
.field private a:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;)I
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    or-int/lit16 v0, v0, 0x80

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    or-int/lit8 v0, v0, 0x40

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    or-int/lit8 v0, v0, 0x20

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 145
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    or-int/lit8 v0, v0, 0x4

    .line 148
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 149
    or-int/lit8 v0, v0, 0x2

    .line 151
    :cond_4
    return v0
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 254
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    or-int/lit8 v0, v0, 0x8

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 258
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    :cond_1
    return v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 266
    move v0, p1

    :cond_0
    rem-int/lit16 v1, v0, 0x80

    .line 267
    div-int/lit16 v0, v0, 0x80

    .line 268
    if-lez v0, :cond_1

    .line 269
    or-int/lit16 v1, v1, 0x80

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 272
    if-gtz v0, :cond_0

    .line 273
    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckMqttMessage;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;->a()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 160
    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 60
    const/16 v0, 0xc

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->a()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-direct {p0, v4}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 70
    array-length v5, v4

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    .line 74
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->b()Ljava/lang/String;

    move-result-object v6

    .line 75
    if-eqz v6, :cond_6

    invoke-direct {p0, v6}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 76
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->c()Ljava/lang/String;

    move-result-object v7

    .line 77
    if-eqz v7, :cond_7

    invoke-direct {p0, v7}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 78
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    array-length v8, v6

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 80
    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 83
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->d()Ljava/lang/String;

    move-result-object v8

    .line 84
    if-eqz v8, :cond_8

    invoke-direct {p0, v8}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v8

    .line 85
    :goto_2
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    array-length v9, v8

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    .line 89
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectPayload;->e()Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_9

    invoke-direct {p0, v3}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 91
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    array-length v9, v3

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    .line 96
    :cond_2
    add-int/2addr v0, v5

    .line 97
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v4, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 116
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v6

    invoke-virtual {v0, v6, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v7

    invoke-virtual {v0, v7, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 122
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v8

    invoke-virtual {v0, v8, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 126
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v3, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 131
    return-void

    .line 75
    :cond_6
    new-array v6, v10, [B

    goto/16 :goto_0

    .line 77
    :cond_7
    new-array v7, v10, [B

    goto/16 :goto_1

    .line 84
    :cond_8
    new-array v8, v10, [B

    goto/16 :goto_2

    .line 90
    :cond_9
    new-array v3, v10, [B

    goto/16 :goto_3
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;->b()[B

    move-result-object v2

    .line 225
    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->a()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-direct {p0, v3}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 228
    array-length v4, v3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x2

    :goto_0
    add-int/2addr v4, v5

    .line 230
    array-length v5, v2

    .line 231
    add-int/2addr v4, v5

    .line 233
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 234
    invoke-direct {p0, v4}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(I)V

    .line 235
    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 236
    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v3, v7, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 237
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v2

    invoke-virtual {v0, v2, v7, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 242
    return-void

    :cond_1
    move v5, v7

    .line 228
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;)V
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x2

    .line 199
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 200
    add-int/2addr v0, v1

    .line 201
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 202
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 203
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 205
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 163
    const/4 v1, 0x2

    .line 166
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    .line 167
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v3

    .line 168
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;

    .line 171
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 174
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    .line 175
    goto :goto_0

    .line 178
    :cond_0
    add-int v0, v1, v6

    .line 179
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 180
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(I)V

    .line 183
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;->a()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 187
    invoke-virtual {v4}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;

    .line 188
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 191
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v7, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 192
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeTopic;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 195
    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;)V
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x2

    .line 213
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(I)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;->a()Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 218
    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 286
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    move v1, p1

    .line 278
    :cond_0
    div-int/lit16 v1, v1, 0x80

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 280
    if-gtz v1, :cond_0

    .line 281
    return v0
.end method

.method private b(Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;)V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;)V
    .locals 3

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :pswitch_1
    :try_start_1
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckMqttMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :pswitch_2
    :try_start_2
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/SubscribeMqttMessage;)V

    goto :goto_0

    .line 35
    :pswitch_3
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/SubAckMqttMessage;)V

    goto :goto_0

    .line 39
    :pswitch_4
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/UnsubAckMqttMessage;)V

    goto :goto_0

    .line 43
    :pswitch_5
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/PublishMqttMessage;)V

    goto :goto_0

    .line 47
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->b(Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;)V

    goto :goto_0

    .line 51
    :pswitch_7
    check-cast p1, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectMqttMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    .line 22
    return-void
.end method
