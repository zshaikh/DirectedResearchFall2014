.class public final Lorg/codehaus/jackson/node/BinaryNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "BinaryNode.java"


# static fields
.field static final a:Lorg/codehaus/jackson/node/BinaryNode;


# instance fields
.field final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([B)V

    sput-object v0, Lorg/codehaus/jackson/node/BinaryNode;->a:Lorg/codehaus/jackson/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/Base64Variant;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/BinaryNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->b:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/Base64Variant;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
