.class public abstract Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# instance fields
.field protected a:I

.field protected b:Lorg/codehaus/jackson/impl/JsonWriteContext;

.field protected c:Z


# virtual methods
.method public final a()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 480
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->a:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->a(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->b(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 183
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->c()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->c:Z

    .line 349
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->a(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->i:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->i:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->l()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->e()V

    goto :goto_0
.end method

.method protected e()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method
