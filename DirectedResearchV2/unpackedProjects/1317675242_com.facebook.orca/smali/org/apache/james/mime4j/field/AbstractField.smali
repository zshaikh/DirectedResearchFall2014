.class public abstract Lorg/apache/james/mime4j/field/AbstractField;
.super Ljava/lang/Object;
.source "AbstractField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/ParsedField;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Lorg/apache/james/mime4j/field/DefaultFieldParser;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->a:Ljava/util/regex/Pattern;

    .line 38
    new-instance v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->b:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/james/mime4j/field/AbstractField;->c:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/apache/james/mime4j/field/AbstractField;->d:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/apache/james/mime4j/field/AbstractField;->e:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 48
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->e:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
