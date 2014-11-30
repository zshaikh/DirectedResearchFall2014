.class Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/james/mime4j/field/address/parser/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

.field private b:I

.field private c:I


# virtual methods
.method public a()Lorg/apache/james/mime4j/field/address/parser/Node;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->a:Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->b:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->a(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->b:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->a()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
