.class public Ldolphin/webkit/a/a/bc;
.super Ldolphin/webkit/a/a/k;
.source "DERObjectIdentifier.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 125
    invoke-static {p1}, Ldolphin/webkit/a/a/bc;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method constructor <init>([B)V
    .locals 12

    .prologue
    .line 57
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 58
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    const-wide/16 v3, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v1, 0x1

    .line 63
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v2

    move-wide v10, v3

    move-wide v2, v10

    move v4, v9

    :goto_0
    array-length v6, p1

    if-eq v4, v6, :cond_3

    .line 65
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 67
    const-wide/high16 v7, 0x80000000000000L

    cmp-long v7, v2, v7

    if-gez v7, :cond_1

    .line 69
    const-wide/16 v7, 0x80

    mul-long/2addr v2, v7

    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 70
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_4

    .line 72
    if-eqz v1, :cond_0

    .line 74
    long-to-int v1, v2

    div-int/lit8 v1, v1, 0x28

    packed-switch v1, :pswitch_data_0

    .line 84
    const/16 v1, 0x32

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    const-wide/16 v6, 0x50

    sub-long/2addr v2, v6

    .line 87
    :goto_1
    const/4 v1, 0x0

    .line 90
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 92
    const-wide/16 v2, 0x0

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 63
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto :goto_0

    .line 77
    :pswitch_0
    const/16 v1, 0x30

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 80
    :pswitch_1
    const/16 v1, 0x31

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-wide/16 v6, 0x28

    sub-long/2addr v2, v6

    .line 82
    goto :goto_1

    .line 97
    :cond_1
    if-nez v0, :cond_2

    .line 99
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    :cond_2
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 102
    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 103
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_4

    .line 105
    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 107
    const/4 v0, 0x0

    .line 108
    const-wide/16 v2, 0x0

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_2

    .line 118
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    .line 120
    return-void

    :cond_4
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_2

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/io/OutputStream;J)V
    .locals 4

    .prologue
    .line 149
    const/16 v0, 0x9

    new-array v1, v0, [B

    .line 150
    const/16 v0, 0x8

    .line 151
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 152
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 154
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 155
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    .line 157
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v1, v0, 0x7

    .line 166
    if-nez v1, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 183
    :goto_0
    return-void

    .line 173
    :cond_0
    new-array v2, v1, [B

    .line 174
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 176
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 177
    const/4 v3, 0x7

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v0, v1, -0x1

    aget-byte v1, v2, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 180
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v2

    .line 247
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    if-lt v0, v7, :cond_0

    const/16 v3, 0x32

    if-gt v0, v3, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v2

    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 256
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 258
    if-gt v7, v4, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    move v0, v1

    .line 254
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 264
    :cond_2
    if-ne v4, v6, :cond_0

    .line 266
    if-nez v0, :cond_4

    :cond_3
    move v2, v0

    .line 278
    goto :goto_0

    :cond_4
    move v0, v2

    .line 272
    goto :goto_2
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 6

    .prologue
    .line 189
    new-instance v0, Ldolphin/webkit/a/a/by;

    iget-object v1, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/by;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    new-instance v2, Ldolphin/webkit/a/a/bf;

    invoke-direct {v2, v1}, Ldolphin/webkit/a/a/bf;-><init>(Ljava/io/OutputStream;)V

    .line 193
    invoke-virtual {v0}, Ldolphin/webkit/a/a/by;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    invoke-virtual {v0}, Ldolphin/webkit/a/a/by;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-direct {p0, v1, v3, v4}, Ldolphin/webkit/a/a/bc;->a(Ljava/io/OutputStream;J)V

    .line 197
    :goto_0
    invoke-virtual {v0}, Ldolphin/webkit/a/a/by;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {v0}, Ldolphin/webkit/a/a/by;->b()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    .line 202
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Ldolphin/webkit/a/a/bc;->a(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v4}, Ldolphin/webkit/a/a/bc;->a(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v2}, Ldolphin/webkit/a/a/bf;->close()V

    .line 212
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 214
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 215
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 225
    instance-of v0, p1, Ldolphin/webkit/a/a/bc;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    check-cast p1, Ldolphin/webkit/a/a/bc;

    iget-object v1, p1, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ldolphin/webkit/a/a/bc;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bc;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
