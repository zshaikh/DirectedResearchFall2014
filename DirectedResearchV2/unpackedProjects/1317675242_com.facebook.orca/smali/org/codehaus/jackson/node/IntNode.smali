.class public final Lorg/codehaus/jackson/node/IntNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final b:[Lorg/codehaus/jackson/node/IntNode;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v0, 0xc

    .line 25
    new-array v1, v0, [Lorg/codehaus/jackson/node/IntNode;

    sput-object v1, Lorg/codehaus/jackson/node/IntNode;->b:[Lorg/codehaus/jackson/node/IntNode;

    .line 26
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    sget-object v2, Lorg/codehaus/jackson/node/IntNode;->b:[Lorg/codehaus/jackson/node/IntNode;

    new-instance v3, Lorg/codehaus/jackson/node/IntNode;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    aput-object v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput p1, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    return-void
.end method

.method public static b(I)Lorg/codehaus/jackson/node/IntNode;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    if-ge p0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/IntNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/codehaus/jackson/node/IntNode;->b:[Lorg/codehaus/jackson/node/IntNode;

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    if-eqz v0, :cond_0

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
    .line 94
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/IntNode;

    iget v0, p1, Lorg/codehaus/jackson/node/IntNode;->a:I

    iget v1, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

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
    .line 58
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public s()D
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public t()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
