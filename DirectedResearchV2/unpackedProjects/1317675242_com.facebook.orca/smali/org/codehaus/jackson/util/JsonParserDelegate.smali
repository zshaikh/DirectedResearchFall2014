.class public Lorg/codehaus/jackson/util/JsonParserDelegate;
.super Lorg/codehaus/jackson/JsonParser;
.source "JsonParserDelegate.java"


# instance fields
.field protected a:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonParser;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    .line 27
    return-void
.end method


# virtual methods
.method public A()S
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->A()S

    move-result v0

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->B()I

    move-result v0

    return v0
.end method

.method public C()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->D()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public E()F
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->E()F

    move-result v0

    return v0
.end method

.method public F()D
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->F()D

    move-result-wide v0

    return-wide v0
.end method

.method public G()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->G()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 91
    return-void
.end method

.method public d()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonParser;

    .line 241
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->k()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->n()V

    .line 117
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public q()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public r()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->r()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public t()[C
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->t()[C

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->u()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->v()I

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->x()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public y()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->y()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public z()B
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->z()B

    move-result v0

    return v0
.end method
