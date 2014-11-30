.class Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# instance fields
.field protected a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

.field protected b:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a:Lcom/facebook/orca/push/mqtt/protocol/messages/FixedHeader;

    .line 90
    iput p2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 91
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 95
    new-array v1, v0, [B

    .line 96
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 97
    iget v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 98
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected b(Ljava/io/DataInputStream;)I
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 104
    iget v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/orca/push/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 105
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method
