.class public final Lorg/codehaus/jackson/io/UTF32Reader;
.super Lorg/codehaus/jackson/io/BaseReader;
.source "UTF32Reader.java"


# instance fields
.field final g:Z

.field h:C

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/io/BaseReader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .line 20
    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->h:C

    .line 25
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->i:I

    .line 30
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->j:I

    .line 43
    iput-boolean p6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->g:Z

    .line 44
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 139
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->j:I

    add-int/2addr v0, p1

    .line 140
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->i:I

    .line 142
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 150
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->j:I

    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 151
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->i:I

    add-int/2addr v1, p2

    .line 153
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->j:I

    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->j:I

    .line 170
    if-lez p1, :cond_4

    .line 171
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    if-lez v0, :cond_1

    move v0, v4

    .line 172
    :goto_0
    if-ge v0, p1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    .line 177
    :cond_1
    iput p1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    .line 199
    :goto_1
    iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    if-ge v0, v6, :cond_7

    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    array-length v3, v3

    iget v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    if-ge v0, v5, :cond_3

    .line 202
    if-gez v0, :cond_2

    .line 203
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->a()V

    .line 204
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    invoke-direct {p0, v1, v6}, Lorg/codehaus/jackson/io/UTF32Reader;->a(II)V

    .line 207
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->b()V

    .line 209
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    goto :goto_1

    .line 182
    :cond_4
    iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    .line 183
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 184
    if-ge v0, v5, :cond_6

    .line 185
    iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    .line 186
    if-gez v0, :cond_5

    .line 187
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->a()V

    move v0, v4

    .line 211
    :goto_2
    return v0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->b()V

    .line 193
    :cond_6
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    goto :goto_1

    :cond_7
    move v0, v5

    .line 211
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->close()V

    return-void
.end method

.method public bridge synthetic read()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 8

    .prologue
    const v6, 0x10ffff

    const/4 v3, -0x1

    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    if-nez v0, :cond_0

    move v0, v3

    .line 127
    :goto_0
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    move v0, p3

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/UTF32Reader;->a([CII)V

    .line 68
    :cond_3
    add-int v0, p3, p2

    .line 72
    iget-char v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->h:C

    if-eqz v1, :cond_5

    .line 73
    add-int/lit8 v1, p2, 0x1

    iget-char v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->h:C

    aput-char v2, p1, p2

    .line 74
    const/4 v2, 0x0

    iput-char v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->h:C

    .line 89
    :goto_1
    if-ge v1, v0, :cond_a

    .line 90
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    .line 93
    iget-boolean v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->g:Z

    if-eqz v3, :cond_6

    .line 94
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    aget-byte v3, v3, v2

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 100
    :goto_2
    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    .line 104
    const v3, 0xffff

    if-le v2, v3, :cond_9

    .line 105
    if-le v2, v6, :cond_4

    .line 106
    sub-int v3, v1, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(above "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lorg/codehaus/jackson/io/UTF32Reader;->a(IILjava/lang/String;)V

    .line 109
    :cond_4
    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    .line 110
    add-int/lit8 v3, v1, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v2, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v1

    .line 112
    const v1, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    .line 114
    if-lt v3, v0, :cond_7

    .line 115
    int-to-char v0, v1

    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->h:C

    move v0, v3

    .line 125
    :goto_3
    sub-int/2addr v0, p2

    .line 126
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->i:I

    goto/16 :goto_0

    .line 80
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    sub-int/2addr v1, v2

    .line 81
    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    .line 82
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF32Reader;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    move v0, v3

    .line 83
    goto/16 :goto_0

    .line 97
    :cond_6
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v5, v2, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->c:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    goto/16 :goto_2

    :cond_7
    move v2, v3

    .line 119
    :goto_4
    add-int/lit8 v3, v2, 0x1

    int-to-char v1, v1

    aput-char v1, p1, v2

    .line 120
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->d:I

    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->e:I

    if-lt v1, v2, :cond_8

    move v0, v3

    .line 121
    goto :goto_3

    :cond_8
    move v1, v3

    .line 123
    goto/16 :goto_1

    :cond_9
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v1, p2

    goto/16 :goto_1
.end method
