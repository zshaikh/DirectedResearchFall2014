.class public Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.super Lorg/apache/james/mime4j/field/address/parser/BaseNode;
.source "SimpleNode.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/Node;


# instance fields
.field protected a:[Lorg/apache/james/mime4j/field/address/parser/Node;

.field protected b:I


# virtual methods
.method public a(I)Lorg/apache/james/mime4j/field/address/parser/Node;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->a:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;->a:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method
