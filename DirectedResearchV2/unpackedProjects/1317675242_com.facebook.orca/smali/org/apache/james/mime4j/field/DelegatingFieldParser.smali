.class public Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/apache/james/mime4j/field/FieldParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->a:Ljava/util/Map;

    .line 30
    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->b:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/FieldParser;

    .line 43
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->b:Lorg/apache/james/mime4j/field/FieldParser;

    .line 46
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;

    move-result-object v0

    .line 51
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/FieldParser;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
