.class public Lorg/codehaus/jackson/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lorg/codehaus/jackson/SerializableString;


# instance fields
.field protected final a:Ljava/lang/String;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 104
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/io/SerializedString;

    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method
