.class Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;
.super Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.source "MessageDecoder.java"


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;I)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;I)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 121
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "MQIsdp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 147
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid input - missing header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 150
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 151
    iget v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 152
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v2

    .line 154
    new-instance v3, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;-><init>()V

    .line 155
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->a(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 156
    and-int/lit16 v0, v1, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_1

    move v0, v6

    :goto_0
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->a(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 157
    and-int/lit8 v0, v1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->b(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 158
    and-int/lit8 v0, v1, 0x20

    const/16 v4, 0x20

    if-ne v0, v4, :cond_3

    move v0, v6

    :goto_2
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->d(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 159
    and-int/lit8 v0, v1, 0x18

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->b(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 160
    and-int/lit8 v0, v1, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    move v0, v6

    :goto_3
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->c(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 161
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v7, :cond_5

    move v0, v6

    :goto_4
    invoke-virtual {v3, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->e(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 162
    invoke-virtual {v3, v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->c(I)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;

    .line 163
    invoke-virtual {v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeaderBuilder;->i()Lcom/facebook/orca/push/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v5

    .line 156
    goto :goto_0

    :cond_2
    move v0, v5

    .line 157
    goto :goto_1

    :cond_3
    move v0, v5

    .line 158
    goto :goto_2

    :cond_4
    move v0, v5

    .line 160
    goto :goto_3

    :cond_5
    move v0, v5

    .line 161
    goto :goto_4
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 169
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 170
    iget v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 171
    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/ConnAckVariableHeader;-><init>(B)V

    return-object v1
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 177
    new-instance v1, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const/4 v1, -0x1

    .line 184
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->c()I

    move-result v2

    if-lez v2, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v1

    .line 187
    :cond_0
    new-instance v2, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
