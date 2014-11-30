.class public Lorg/apache/james/mime4j/field/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "[\\x21-\\x39\\x3b-\\x7e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/Fields;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->a(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    return-object p0
.end method

.method private static a(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 610
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/FieldParser;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    .line 614
    return-object v0
.end method
