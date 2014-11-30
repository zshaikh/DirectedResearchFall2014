.class public final Lorg/codehaus/jackson/node/DecimalNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "DecimalNode.java"


# instance fields
.field protected final a:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-void
.end method

.method public static a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/DecimalNode;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/DecimalNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/DecimalNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
