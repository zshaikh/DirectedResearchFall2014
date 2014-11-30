.class public final Lorg/codehaus/jackson/node/LongNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "LongNode.java"


# instance fields
.field final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    return-void
.end method

.method public static a(J)Lorg/codehaus/jackson/node/LongNode;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/LongNode;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/LongNode;-><init>(J)V

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
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v4

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/LongNode;

    iget-wide v0, p1, Lorg/codehaus/jackson/node/LongNode;->a:J

    iget-wide v2, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    cmp-long v0, v0, v2

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
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    long-to-int v0, v0

    iget-wide v1, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->a:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
