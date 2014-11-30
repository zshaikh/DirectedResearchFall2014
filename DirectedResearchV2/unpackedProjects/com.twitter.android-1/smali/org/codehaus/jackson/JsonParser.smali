.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected p:I

.field protected q:Lorg/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2

    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->p:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->b()I

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

.method public abstract d()I
.end method

.method protected final d(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .locals 2

    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->n()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public abstract e()J
.end method

.method public abstract f()D
.end method

.method public abstract g()Lorg/codehaus/jackson/JsonToken;
.end method

.method public abstract h()Lorg/codehaus/jackson/JsonParser;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public final p()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->q:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final q()Z
    .locals 3

    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/JsonParser;->q:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->n()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method
