.class public final Lorg/codehaus/jackson/node/DoubleNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "DoubleNode.java"


# instance fields
.field protected final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    return-void
.end method

.method public static a(D)Lorg/codehaus/jackson/node/DoubleNode;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/codehaus/jackson/node/DoubleNode;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/DoubleNode;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v4

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/DoubleNode;

    iget-wide v0, p1, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    iget-wide v2, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public f()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 103
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    double-to-int v0, v0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->a:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/DoubleNode;->t()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
