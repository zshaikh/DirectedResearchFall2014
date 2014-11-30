.class public final Ldolphin/net/a;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/a;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Ldolphin/net/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ldolphin/net/a;->b:I

    .line 71
    return-void
.end method

.method private a(I)I
    .locals 8

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 349
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Ldolphin/net/a;->b:I

    if-lt v0, v1, :cond_0

    .line 351
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    aget-char v0, v0, p1

    .line 357
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 358
    add-int/lit8 v0, v0, -0x30

    .line 367
    :goto_0
    iget-object v1, p0, Ldolphin/net/a;->g:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 368
    if-lt v1, v3, :cond_4

    if-gt v1, v4, :cond_4

    .line 369
    add-int/lit8 v1, v1, -0x30

    .line 378
    :goto_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 359
    :cond_1
    if-lt v0, v7, :cond_2

    const/16 v1, 0x66

    if-gt v0, v1, :cond_2

    .line 360
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 361
    :cond_2
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    .line 362
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 364
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_4
    if-lt v1, v7, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 371
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 372
    :cond_5
    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    .line 373
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 375
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 78
    :goto_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ne v0, v1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 129
    :goto_1
    return-object v0

    .line 85
    :cond_1
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->d:I

    .line 88
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 89
    :goto_2
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_2

    .line 93
    :cond_2
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-lt v0, v1, :cond_3

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->e:I

    .line 103
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 104
    :goto_3
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_3

    .line 107
    :cond_4
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ne v0, v1, :cond_6

    .line 109
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_6
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 117
    :goto_4
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_4

    .line 122
    :cond_7
    iget v0, p0, Ldolphin/net/a;->e:I

    iget v1, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 126
    :cond_a
    iget v0, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldolphin/net/a;->d:I

    .line 129
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->d:I

    iget v3, p0, Ldolphin/net/a;->e:I

    iget v4, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 136
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->d:I

    .line 137
    iget v0, p0, Ldolphin/net/a;->d:I

    iput v0, p0, Ldolphin/net/a;->e:I

    .line 140
    :goto_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 147
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 161
    :goto_1
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    invoke-direct {p0}, Ldolphin/net/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 155
    :goto_2
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 156
    iget v0, p0, Ldolphin/net/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->e:I

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    iget-object v2, p0, Ldolphin/net/a;->g:[C

    iget v3, p0, Ldolphin/net/a;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    .line 164
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->d:I

    iget v3, p0, Ldolphin/net/a;->e:I

    iget v4, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x20

    .line 170
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ldolphin/net/a;->b:I

    if-lt v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->d:I

    .line 176
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 181
    :goto_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4

    .line 183
    :cond_1
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->e:I

    .line 204
    :cond_2
    iget v0, p0, Ldolphin/net/a;->e:I

    iget v1, p0, Ldolphin/net/a;->d:I

    sub-int v2, v0, v1

    .line 205
    const/4 v0, 0x5

    if-lt v2, v0, :cond_3

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_7

    .line 206
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_4
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    .line 188
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->e:I

    .line 189
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 192
    :goto_1
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2

    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_1

    .line 195
    :cond_5
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_6

    .line 196
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 199
    :cond_6
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto/16 :goto_0

    .line 210
    :cond_7
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 211
    const/4 v1, 0x0

    iget v0, p0, Ldolphin/net/a;->d:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 212
    invoke-direct {p0, v0}, Ldolphin/net/a;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 211
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 215
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v3, p0, Ldolphin/net/a;->d:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 221
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->d:I

    .line 222
    iget v0, p0, Ldolphin/net/a;->c:I

    iput v0, p0, Ldolphin/net/a;->e:I

    .line 225
    :cond_0
    :goto_0
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-lt v0, v1, :cond_1

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->d:I

    iget v3, p0, Ldolphin/net/a;->e:I

    iget v4, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 255
    :goto_1
    return-object v0

    .line 230
    :cond_1
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 259
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldolphin/net/a;->e:I

    iget-object v2, p0, Ldolphin/net/a;->g:[C

    iget v3, p0, Ldolphin/net/a;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 260
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_0

    .line 235
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->d:I

    iget v3, p0, Ldolphin/net/a;->e:I

    iget v4, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 238
    :sswitch_1
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldolphin/net/a;->e:I

    invoke-direct {p0}, Ldolphin/net/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 239
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_0

    .line 244
    :sswitch_2
    iget v0, p0, Ldolphin/net/a;->e:I

    iput v0, p0, Ldolphin/net/a;->f:I

    .line 246
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 247
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldolphin/net/a;->e:I

    aput-char v4, v0, v1

    .line 249
    :goto_2
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 250
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldolphin/net/a;->e:I

    aput-char v4, v0, v1

    .line 249
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    goto :goto_2

    .line 252
    :cond_2
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 255
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->d:I

    iget v3, p0, Ldolphin/net/a;->f:I

    iget v4, p0, Ldolphin/net/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private e()C
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 269
    iget v0, p0, Ldolphin/net/a;->c:I

    iget v1, p0, Ldolphin/net/a;->b:I

    if-ne v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse DN"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 292
    invoke-direct {p0}, Ldolphin/net/a;->f()C

    move-result v0

    :goto_0
    return v0

    .line 288
    :sswitch_0
    iget-object v0, p0, Ldolphin/net/a;->g:[C

    iget v1, p0, Ldolphin/net/a;->c:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private f()C
    .locals 8

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 300
    iget v0, p0, Ldolphin/net/a;->c:I

    invoke-direct {p0, v0}, Ldolphin/net/a;->a(I)I

    move-result v1

    .line 301
    iget v0, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a;->c:I

    .line 303
    if-ge v1, v6, :cond_0

    .line 304
    int-to-char v0, v1

    .line 337
    :goto_0
    return v0

    .line 305
    :cond_0
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_7

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_7

    .line 308
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_2

    .line 309
    const/4 v0, 0x1

    .line 310
    and-int/lit8 v1, v1, 0x1f

    .line 320
    :goto_1
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_6

    .line 321
    iget v4, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldolphin/net/a;->c:I

    .line 322
    iget v4, p0, Ldolphin/net/a;->c:I

    iget v5, p0, Ldolphin/net/a;->b:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Ldolphin/net/a;->g:[C

    iget v5, p0, Ldolphin/net/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_1
    move v0, v2

    .line 323
    goto :goto_0

    .line 311
    :cond_2
    const/16 v0, 0xef

    if-gt v1, v0, :cond_3

    .line 312
    const/4 v0, 0x2

    .line 313
    and-int/lit8 v1, v1, 0xf

    goto :goto_1

    .line 315
    :cond_3
    const/4 v0, 0x3

    .line 316
    and-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 325
    :cond_4
    iget v4, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldolphin/net/a;->c:I

    .line 327
    iget v4, p0, Ldolphin/net/a;->c:I

    invoke-direct {p0, v4}, Ldolphin/net/a;->a(I)I

    move-result v4

    .line 328
    iget v5, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ldolphin/net/a;->c:I

    .line 329
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_5

    move v0, v2

    .line 330
    goto :goto_0

    .line 333
    :cond_5
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 335
    :cond_6
    int-to-char v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    .line 337
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 390
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Ldolphin/net/a;->c:I

    .line 391
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/net/a;->d:I

    .line 392
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/net/a;->e:I

    .line 393
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/net/a;->f:I

    .line 394
    iget-object v1, p0, Ldolphin/net/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Ldolphin/net/a;->g:[C

    .line 396
    invoke-direct {p0}, Ldolphin/net/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 397
    if-nez v1, :cond_5

    .line 446
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v1

    .line 401
    :goto_1
    const-string v1, ""

    .line 403
    iget v3, p0, Ldolphin/net/a;->c:I

    iget v4, p0, Ldolphin/net/a;->b:I

    if-eq v3, v4, :cond_0

    .line 407
    iget-object v3, p0, Ldolphin/net/a;->g:[C

    iget v4, p0, Ldolphin/net/a;->c:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 420
    invoke-direct {p0}, Ldolphin/net/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 423
    :goto_2
    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 424
    goto :goto_0

    .line 409
    :sswitch_1
    invoke-direct {p0}, Ldolphin/net/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 412
    :sswitch_2
    invoke-direct {p0}, Ldolphin/net/a;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 427
    :cond_2
    iget v1, p0, Ldolphin/net/a;->c:I

    iget v2, p0, Ldolphin/net/a;->b:I

    if-ge v1, v2, :cond_0

    .line 431
    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4

    .line 436
    :cond_3
    iget v1, p0, Ldolphin/net/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldolphin/net/a;->c:I

    .line 437
    invoke-direct {p0}, Ldolphin/net/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 438
    if-nez v1, :cond_1

    .line 439
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse DN"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :catch_0
    move-exception v1

    .line 445
    const-string v1, "DNParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldolphin/net/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_4
    :try_start_1
    iget-object v1, p0, Ldolphin/net/a;->g:[C

    iget v2, p0, Ldolphin/net/a;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    .line 433
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse DN"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move-object v2, v1

    goto/16 :goto_1

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
