.class Lorg/apache/james/mime4j/parser/RawField;
.super Ljava/lang/Object;
.source "RawField.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/Field;


# instance fields
.field private final a:Lorg/apache/james/mime4j/util/ByteSequence;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/parser/RawField;->b:I

    invoke-static {v0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lorg/apache/james/mime4j/parser/RawField;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/RawField;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-interface {v1}, Lorg/apache/james/mime4j/util/ByteSequence;->b()I

    move-result v1

    sub-int/2addr v1, v0

    .line 73
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/RawField;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v2, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->c:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->a:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->d:Ljava/lang/String;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
