.class abstract Lorg/codehaus/jackson/io/BaseReader;
.super Ljava/io/Reader;
.source "BaseReader.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/io/IOContext;

.field protected b:Ljava/io/InputStream;

.field protected c:[B

.field protected d:I

.field protected e:I

.field protected f:[C


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->f:[C

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/io/BaseReader;->a:Lorg/codehaus/jackson/io/IOContext;

    .line 43
    iput-object p2, p0, Lorg/codehaus/jackson/io/BaseReader;->b:Ljava/io/InputStream;

    .line 44
    iput-object p3, p0, Lorg/codehaus/jackson/io/BaseReader;->c:[B

    .line 45
    iput p4, p0, Lorg/codehaus/jackson/io/BaseReader;->d:I

    .line 46
    iput p5, p0, Lorg/codehaus/jackson/io/BaseReader;->e:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->c:[B

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->c:[B

    .line 102
    iget-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->a([B)V

    .line 104
    :cond_0
    return-void
.end method

.method protected a([CII)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->b:Ljava/io/InputStream;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->b:Ljava/io/InputStream;

    .line 62
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/BaseReader;->a()V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->f:[C

    if-nez v0, :cond_0

    .line 78
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->f:[C

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->f:[C

    invoke-virtual {p0, v0, v2, v1}, Lorg/codehaus/jackson/io/BaseReader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->f:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method
