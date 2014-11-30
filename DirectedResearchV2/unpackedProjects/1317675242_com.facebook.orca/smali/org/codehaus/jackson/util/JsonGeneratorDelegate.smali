.class public Lorg/codehaus/jackson/util/JsonGeneratorDelegate;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorDelegate.java"


# instance fields
.field protected a:Lorg/codehaus/jackson/JsonGenerator;


# virtual methods
.method public a(C)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 213
    return-void
.end method

.method public b([CII)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->b([CII)V

    .line 208
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 24
    return-void
.end method
