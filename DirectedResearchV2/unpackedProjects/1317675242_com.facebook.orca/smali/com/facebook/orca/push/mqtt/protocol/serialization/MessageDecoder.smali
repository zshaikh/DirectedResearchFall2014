.class public Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageFactory;

.field private b:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageFactory;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageFactory;

    .line 26
    return-void
.end method

.method private b()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 57
    shr-int/lit8 v1, v0, 0x4

    .line 58
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    move v2, v5

    .line 59
    :goto_0
    and-int/lit8 v3, v0, 0x6

    shr-int/lit8 v3, v3, 0x1

    .line 60
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v5

    :goto_1
    move v8, v5

    move v5, v4

    move v4, v8

    .line 66
    :cond_0
    iget-object v6, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 67
    and-int/lit8 v7, v6, 0x7f

    mul-int/2addr v7, v4

    add-int/2addr v5, v7

    .line 68
    mul-int/lit16 v4, v4, 0x80

    .line 69
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    .line 71
    new-instance v4, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    invoke-direct {v4}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;-><init>()V

    .line 72
    invoke-virtual {v4, v1}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    .line 73
    invoke-virtual {v4, v2}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->a(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    .line 74
    invoke-virtual {v4, v3}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->b(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    .line 75
    invoke-virtual {v4, v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->b(Z)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    .line 76
    invoke-virtual {v4, v5}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->c(I)Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;

    .line 77
    invoke-virtual {v4}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    return-object v0

    :cond_1
    move v2, v4

    .line 58
    goto :goto_0

    :cond_2
    move v0, v4

    .line 60
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
    .locals 4

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Stream not initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b()Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;->e()I

    move-result v1

    .line 38
    new-instance v2, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;I)V

    .line 40
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a(Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v2, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 43
    new-instance v3, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;-><init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;I)V

    .line 45
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-static {v3, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a(Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    iget v3, v3, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 47
    if-eqz v3, :cond_1

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected bytes remaining in payload"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageFactory;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageFactory;->a(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/orca/push/mqtt/protocol/messages/MqttMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    .line 30
    return-void
.end method
