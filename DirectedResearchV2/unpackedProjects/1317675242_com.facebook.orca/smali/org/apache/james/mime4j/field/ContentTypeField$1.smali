.class final Lorg/apache/james/mime4j/field/ContentTypeField$1;
.super Ljava/lang/Object;
.source "ContentTypeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-object v0
.end method
