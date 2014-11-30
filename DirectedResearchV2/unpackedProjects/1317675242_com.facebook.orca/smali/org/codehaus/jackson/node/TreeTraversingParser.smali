.class public Lorg/codehaus/jackson/node/TreeTraversingParser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TreeTraversingParser.java"


# instance fields
.field protected a:Lorg/codehaus/jackson/ObjectCodec;

.field protected b:Lorg/codehaus/jackson/node/NodeCursor;

.field protected c:Lorg/codehaus/jackson/JsonToken;

.field protected g:Z

.field protected h:Z


# virtual methods
.method public B()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->q()I

    move-result v0

    return v0
.end method

.method public C()J
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->u()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public E()F
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->s()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public F()D
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->s()D

    move-result-wide v0

    return-wide v0
.end method

.method public G()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->t()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object p0

    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    check-cast p0, Lorg/codehaus/jackson/node/POJONode;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/POJONode;->d()Ljava/lang/Object;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->d()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object p0

    .line 331
    if-eqz p0, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->e()[B

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    check-cast p0, Lorg/codehaus/jackson/node/POJONode;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/POJONode;->d()Ljava/lang/Object;

    move-result-object p0

    .line 340
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 341
    check-cast p0, [B

    check-cast p0, [B

    move-object v0, p0

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lorg/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 368
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 367
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    .line 104
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    .line 105
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 107
    :cond_0
    return-void
.end method

.method public d()Lorg/codehaus/jackson/JsonToken;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 120
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/JsonToken;

    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 155
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    if-eqz v0, :cond_5

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->g()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->b()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 135
    :cond_3
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    .line 137
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_6

    .line 141
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    move-object v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->b()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 148
    :cond_7
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    .line 150
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 153
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->f()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public e()Lorg/codehaus/jackson/JsonParser;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 165
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    .line 166
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 168
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->g:Z

    .line 169
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->j()V

    .line 376
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->h:Z

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 234
    :goto_0
    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/node/TreeTraversingParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->d_()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public k()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->a:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public q()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public r()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public t()[C
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->p()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public y()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->f()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method
