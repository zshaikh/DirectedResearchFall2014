.class final Lorg/apache/james/mime4j/util/StringArrayMap$1;
.super Ljava/lang/Object;
.source "StringArrayMap.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->a:Ljava/lang/Object;

    .line 123
    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/StringArrayMap$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
