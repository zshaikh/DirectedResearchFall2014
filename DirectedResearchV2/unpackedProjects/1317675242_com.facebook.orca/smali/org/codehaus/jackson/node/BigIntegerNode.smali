.class public final Lorg/codehaus/jackson/node/BigIntegerNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "BigIntegerNode.java"


# instance fields
.field protected final a:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/codehaus/jackson/node/BigIntegerNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public a(Z)Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/BigIntegerNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public f()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-object v0
.end method
