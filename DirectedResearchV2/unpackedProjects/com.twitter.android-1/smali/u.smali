.class public final Lu;
.super Ljava/lang/Object;


# instance fields
.field private a:Ld;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private final f:Z

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Ld;[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu;->h:Z

    iput v1, p0, Lu;->i:I

    iput-object p1, p0, Lu;->a:Ld;

    const/4 v0, 0x0

    iput-object v0, p0, Lu;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lu;->c:[B

    iput v1, p0, Lu;->d:I

    add-int/lit8 v0, p4, 0x0

    iput v0, p0, Lu;->e:I

    iput v1, p0, Lu;->g:I

    iput-boolean v1, p0, Lu;->f:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lu;->h:Z

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lu;->i:I

    move v0, v1

    :cond_0
    return v0

    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lu;->h:Z

    goto :goto_0
.end method

.method private b(I)Z
    .locals 6

    iget v0, p0, Lu;->e:I

    iget v1, p0, Lu;->d:I

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lu;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_1
    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lu;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lu;->c:[B

    iget v3, p0, Lu;->e:I

    iget-object v4, p0, Lu;->c:[B

    array-length v4, v4

    iget v5, p0, Lu;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v2, p0, Lu;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lu;->e:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a(ILorg/codehaus/jackson/a;Laj;Lab;)Lorg/codehaus/jackson/JsonParser;
    .locals 11

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v5}, Lu;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lu;->c:[B

    iget v3, p0, Lu;->d:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    :goto_0
    ushr-int/lit8 v2, v3, 0x10

    const v4, 0xfeff

    if-ne v2, v4, :cond_1

    iget v2, p0, Lu;->d:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lu;->d:I

    iput v6, p0, Lu;->i:I

    iput-boolean v0, p0, Lu;->h:Z

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    :cond_0
    :goto_2
    if-nez v0, :cond_b

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    :goto_3
    iget-object v1, p0, Lu;->a:Ld;

    invoke-virtual {v1, v0}, Ld;->a(Lorg/codehaus/jackson/JsonEncoding;)V

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->a(I)Z

    move-result v8

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->a(I)Z

    move-result v9

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v0, v1, :cond_10

    if-eqz v8, :cond_10

    invoke-virtual {p3, v8, v9}, Laj;->a(ZZ)Laj;

    move-result-object v5

    new-instance v0, Lal;

    iget-object v1, p0, Lu;->a:Ld;

    iget-object v3, p0, Lu;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lu;->c:[B

    iget v7, p0, Lu;->d:I

    iget v8, p0, Lu;->e:I

    iget-boolean v9, p0, Lu;->f:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lal;-><init>(Ld;ILjava/io/InputStream;Lorg/codehaus/jackson/a;Laj;[BIIZ)V

    :goto_4
    return-object v0

    :sswitch_0
    iput-boolean v0, p0, Lu;->h:Z

    iget v2, p0, Lu;->d:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lu;->d:I

    iput v5, p0, Lu;->i:I

    move v2, v0

    goto :goto_1

    :sswitch_1
    iget v2, p0, Lu;->d:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lu;->d:I

    iput v5, p0, Lu;->i:I

    iput-boolean v1, p0, Lu;->h:Z

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v2, "2143"

    invoke-static {v2}, Lu;->a(Ljava/lang/String;)V

    :sswitch_3
    const-string v2, "3412"

    invoke-static {v2}, Lu;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v4, 0xfffe

    if-ne v2, v4, :cond_2

    iget v2, p0, Lu;->d:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lu;->d:I

    iput v6, p0, Lu;->i:I

    iput-boolean v1, p0, Lu;->h:Z

    move v2, v0

    goto :goto_1

    :cond_2
    ushr-int/lit8 v2, v3, 0x8

    const v4, 0xefbbbf

    if-ne v2, v4, :cond_3

    iget v2, p0, Lu;->d:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lu;->d:I

    iput v0, p0, Lu;->i:I

    iput-boolean v0, p0, Lu;->h:Z

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    shr-int/lit8 v2, v3, 0x8

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lu;->h:Z

    :goto_5
    iput v5, p0, Lu;->i:I

    move v2, v0

    :goto_6
    if-nez v2, :cond_0

    ushr-int/lit8 v2, v3, 0x10

    invoke-direct {p0, v2}, Lu;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    const v2, 0xffffff

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    iput-boolean v1, p0, Lu;->h:Z

    goto :goto_5

    :cond_7
    const v2, -0xff0001

    and-int/2addr v2, v3

    if-nez v2, :cond_8

    const-string v2, "3412"

    invoke-static {v2}, Lu;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const v2, -0xff01

    and-int/2addr v2, v3

    if-nez v2, :cond_9

    const-string v2, "2143"

    invoke-static {v2}, Lu;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move v2, v1

    goto :goto_6

    :cond_a
    invoke-direct {p0, v6}, Lu;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lu;->c:[B

    iget v3, p0, Lu;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lu;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lu;->i:I

    if-ne v0, v6, :cond_d

    iget-boolean v0, p0, Lu;->h:Z

    if-eqz v0, :cond_c

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->b:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_3

    :cond_c
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->c:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_3

    :cond_d
    iget v0, p0, Lu;->i:I

    if-ne v0, v5, :cond_f

    iget-boolean v0, p0, Lu;->h:Z

    if-eqz v0, :cond_e

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->d:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_3

    :cond_e
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->e:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_3

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v7, Lac;

    iget-object v10, p0, Lu;->a:Ld;

    iget-object v0, p0, Lu;->a:Ld;

    invoke-virtual {v0}, Ld;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    sget-object v0, Lk;->a:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lam;

    iget-object v1, p0, Lu;->a:Ld;

    iget-object v2, p0, Lu;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    iget v5, p0, Lu;->e:I

    iget-object v6, p0, Lu;->a:Ld;

    invoke-virtual {v6}, Ld;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lam;-><init>(Ld;Ljava/io/InputStream;[BIIZ)V

    move-object v3, v0

    :goto_7
    invoke-virtual {p4, v8, v9}, Lab;->a(ZZ)Lab;

    move-result-object v5

    move-object v0, v7

    move-object v1, v10

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lac;-><init>(Ld;ILjava/io/Reader;Lorg/codehaus/jackson/a;Lab;)V

    move-object v0, v7

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lu;->b:Ljava/io/InputStream;

    if-nez v2, :cond_11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lu;->c:[B

    iget v2, p0, Lu;->d:I

    iget v3, p0, Lu;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_8
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget v0, p0, Lu;->d:I

    iget v1, p0, Lu;->e:I

    if-ge v0, v1, :cond_12

    new-instance v0, Lr;

    iget-object v1, p0, Lu;->a:Ld;

    iget-object v3, p0, Lu;->c:[B

    iget v4, p0, Lu;->d:I

    iget v5, p0, Lu;->e:I

    invoke-direct/range {v0 .. v5}, Lr;-><init>(Ld;Ljava/io/InputStream;[BII)V

    goto :goto_8

    :cond_12
    move-object v0, v2

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
