.class public final Lac;
.super Lv;


# instance fields
.field private r:Lorg/codehaus/jackson/a;

.field private s:Lab;

.field private t:Z


# direct methods
.method public constructor <init>(Ld;ILjava/io/Reader;Lorg/codehaus/jackson/a;Lab;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lv;-><init>(Ld;ILjava/io/Reader;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lac;->t:Z

    iput-object p4, p0, Lac;->r:Lorg/codehaus/jackson/a;

    iput-object p5, p0, Lac;->s:Lab;

    return-void
.end method

.method private a(III)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Lac;->a:[C

    iget v2, p0, Lac;->c:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/c;->a([CII)V

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_0
    iget v2, p0, Lac;->c:I

    iget v3, p0, Lac;->d:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lac;->a()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": was expecting closing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lac;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lac;->c:I

    aget-char v3, v2, v3

    if-gt v3, v5, :cond_2

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lac;->v()C

    move-result v2

    :goto_1
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    array-length v0, v1

    if-lt v3, v0, :cond_4

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-gt v3, p3, :cond_2

    if-eq v3, p3, :cond_3

    const/16 v2, 0x20

    if-ge v3, v2, :cond_2

    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lac;->c(ILjava/lang/String;)V

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    iget-object v3, p0, Lac;->s:Lab;

    invoke-virtual {v3, v1, v2, v0, p2}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .locals 6

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_4

    iget v3, p0, Lac;->c:I

    iget v4, p0, Lac;->d:I

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lac;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lac;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lac;->a:[C

    iget v4, p0, Lac;->c:I

    aget-char v3, v3, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget v3, p0, Lac;->c:I

    iget v5, p0, Lac;->d:I

    if-lt v3, v5, :cond_1

    invoke-virtual {p0}, Lac;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lac;->a:[C

    iget v5, p0, Lac;->c:I

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lac;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lac;->c:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized token \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lac;->c(Ljava/lang/String;)V

    :cond_3
    iget v3, p0, Lac;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lac;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .locals 10

    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v0, 0x0

    if-eq p1, v7, :cond_11

    if-ne p1, v8, :cond_4

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lac;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lac;->c:I

    iget v2, p0, Lac;->d:I

    if-ge v1, v2, :cond_3

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_0
    iget-object v5, p0, Lac;->a:[C

    aget-char v5, v5, v1

    if-ne v5, v8, :cond_1

    iget v2, p0, Lac;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lac;->c:I

    iget-object v3, p0, Lac;->s:Lab;

    iget-object v4, p0, Lac;->a:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-nez v6, :cond_3

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_0

    :cond_3
    iget v2, p0, Lac;->c:I

    iput v1, p0, Lac;->c:I

    invoke-direct {p0, v2, v0, v8}, Lac;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->c:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lac;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lac;->b(ILjava/lang/String;)V

    :cond_5
    invoke-static {}, Lorg/codehaus/jackson/util/b;->c()[I

    move-result-object v5

    array-length v3, v5

    if-ge p1, v3, :cond_a

    aget v1, v5, p1

    if-nez v1, :cond_9

    const/16 v1, 0x30

    if-lt p1, v1, :cond_6

    const/16 v1, 0x39

    if-le p1, v1, :cond_9

    :cond_6
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lac;->b(ILjava/lang/String;)V

    :cond_7
    iget v1, p0, Lac;->c:I

    iget v4, p0, Lac;->d:I

    if-ge v1, v4, :cond_16

    move v2, v1

    move v1, v0

    :cond_8
    iget-object v6, p0, Lac;->a:[C

    aget-char v6, v6, v2

    if-ge v6, v3, :cond_b

    aget v7, v5, v6

    if-eqz v7, :cond_c

    iget v0, p0, Lac;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lac;->c:I

    iget-object v3, p0, Lac;->s:Lab;

    iget-object v4, p0, Lac;->a:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    goto :goto_1

    :cond_b
    int-to-char v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-nez v7, :cond_c

    iget v0, p0, Lac;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lac;->c:I

    iget-object v3, p0, Lac;->s:Lab;

    iget-object v4, p0, Lac;->a:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_8

    :goto_2
    iget v3, p0, Lac;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v2, p0, Lac;->c:I

    iget-object v2, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    iget-object v4, p0, Lac;->a:[C

    iget v6, p0, Lac;->c:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v6}, Lorg/codehaus/jackson/util/c;->a([CII)V

    iget-object v2, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v3

    iget-object v2, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v2

    array-length v6, v5

    move v9, v2

    move-object v2, v3

    move v3, v1

    move v1, v9

    :goto_3
    iget v4, p0, Lac;->c:I

    iget v7, p0, Lac;->d:I

    if-lt v4, v7, :cond_d

    invoke-virtual {p0}, Lac;->a()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    iget-object v4, p0, Lac;->a:[C

    iget v7, p0, Lac;->c:I

    aget-char v7, v4, v7

    if-gt v7, v6, :cond_f

    aget v4, v5, v7

    if-eqz v4, :cond_10

    :cond_e
    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/c;->a(I)V

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    iget-object v4, p0, Lac;->s:Lab;

    invoke-virtual {v4, v1, v2, v0, v3}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_10
    iget v4, p0, Lac;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lac;->c:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    add-int/lit8 v4, v1, 0x1

    aput-char v7, v2, v1

    array-length v1, v2

    if-lt v4, v1, :cond_15

    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    move v1, v0

    goto :goto_3

    :cond_11
    iget v1, p0, Lac;->c:I

    iget v2, p0, Lac;->d:I

    if-ge v1, v2, :cond_14

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_12
    iget-object v5, p0, Lac;->a:[C

    aget-char v5, v5, v1

    if-ge v5, v4, :cond_13

    aget v6, v3, v5

    if-eqz v6, :cond_13

    if-ne v5, v7, :cond_14

    iget v2, p0, Lac;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lac;->c:I

    iget-object v3, p0, Lac;->s:Lab;

    iget-object v4, p0, Lac;->a:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lab;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_12

    :cond_14
    iget v2, p0, Lac;->c:I

    iput v1, p0, Lac;->c:I

    invoke-direct {p0, v2, v0, v7}, Lac;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    move v1, v4

    goto/16 :goto_3

    :cond_16
    move v2, v1

    move v1, v0

    goto/16 :goto_2
.end method

.method private e(I)Lorg/codehaus/jackson/JsonToken;
    .locals 7

    const/16 v6, 0x5c

    const/16 v5, 0x27

    if-ne p1, v5, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lac;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lac;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_0
    iget v2, p0, Lac;->c:I

    iget v3, p0, Lac;->d:I

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lac;->a()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lac;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lac;->c:I

    aget-char v2, v2, v3

    if-gt v2, v6, :cond_3

    if-ne v2, v6, :cond_4

    invoke-direct {p0}, Lac;->v()C

    move-result v2

    :cond_3
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    :cond_4
    if-gt v2, v5, :cond_3

    if-eq v2, v5, :cond_5

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lac;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_6
    move v3, v0

    goto :goto_2
.end method

.method private r()V
    .locals 2

    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lac;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac;->c:I

    :cond_1
    iget v0, p0, Lac;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac;->f:I

    iget v0, p0, Lac;->c:I

    iput v0, p0, Lac;->g:I

    return-void
.end method

.method private s()V
    .locals 1

    iget v0, p0, Lac;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac;->f:I

    iget v0, p0, Lac;->c:I

    iput v0, p0, Lac;->g:I

    return-void
.end method

.method private final t()I
    .locals 4

    const/16 v3, 0x20

    :cond_0
    :goto_0
    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lac;->c:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lac;->u()V

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lac;->s()V

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lac;->r()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lac;->a(I)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lac;->k:Lai;

    invoke-virtual {v1}, Lai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lac;->d(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final u()V
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x2f

    const/16 v3, 0x2a

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->b:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lac;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lac;->b(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lac;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lac;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_7

    :cond_2
    :goto_0
    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lac;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    if-ne v0, v6, :cond_5

    invoke-direct {p0}, Lac;->s()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne v0, v7, :cond_6

    invoke-direct {p0}, Lac;->r()V

    goto :goto_1

    :cond_6
    if-eq v0, v5, :cond_2

    invoke-virtual {p0, v0}, Lac;->a(I)V

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_f

    :cond_8
    :goto_2
    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lac;->c:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_8

    if-ne v0, v3, :cond_b

    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_8

    iget v0, p0, Lac;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac;->c:I

    goto :goto_1

    :cond_b
    const/16 v1, 0x20

    if-ge v0, v1, :cond_8

    if-ne v0, v6, :cond_c

    invoke-direct {p0}, Lac;->s()V

    goto :goto_2

    :cond_c
    if-ne v0, v7, :cond_d

    invoke-direct {p0}, Lac;->r()V

    goto :goto_2

    :cond_d
    if-eq v0, v5, :cond_8

    invoke-virtual {p0, v0}, Lac;->a(I)V

    goto :goto_2

    :cond_e
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lac;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lac;->b(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private v()C
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lac;->c:I

    iget v2, p0, Lac;->d:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lac;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lac;->a:[C

    iget v2, p0, Lac;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lac;->c:I

    aget-char v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lac;->a(C)C

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget v2, p0, Lac;->c:I

    iget v3, p0, Lac;->d:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lac;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lac;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lac;->c:I

    aget-char v2, v2, v3

    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lac;->b(ILjava/lang/String;)V

    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    int-to-char v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-super {p0}, Lv;->close()V

    iget-object v0, p0, Lac;->s:Lab;

    invoke-virtual {v0}, Lab;->b()V

    return-void
.end method

.method public final g()Lorg/codehaus/jackson/JsonToken;
    .locals 9

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x20

    iget-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lac;->n:Z

    iget-object v0, p0, Lac;->l:Lorg/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lac;->l:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lac;->k:Lai;

    iget v2, p0, Lac;->i:I

    iget v3, p0, Lac;->j:I

    invoke-virtual {v1, v2, v3}, Lai;->a(II)Lai;

    move-result-object v1

    iput-object v1, p0, Lac;->k:Lai;

    :cond_0
    :goto_0
    iput-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lac;->k:Lai;

    iget v2, p0, Lac;->i:I

    iget v3, p0, Lac;->j:I

    invoke-virtual {v1, v2, v3}, Lai;->b(II)Lai;

    move-result-object v1

    iput-object v1, p0, Lac;->k:Lai;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lac;->t:Z

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lac;->t:Z

    iget v1, p0, Lac;->c:I

    iget v0, p0, Lac;->d:I

    iget-object v4, p0, Lac;->a:[C

    :goto_2
    if-lt v1, v0, :cond_4

    iput v1, p0, Lac;->c:I

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lac;->b(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lac;->c:I

    iget v0, p0, Lac;->d:I

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v4, v1

    if-gt v1, v8, :cond_9

    if-ne v1, v8, :cond_5

    iput v3, p0, Lac;->c:I

    invoke-direct {p0}, Lac;->v()C

    iget v1, p0, Lac;->c:I

    iget v0, p0, Lac;->d:I

    goto :goto_2

    :cond_5
    if-gt v1, v7, :cond_9

    if-ne v1, v7, :cond_8

    iput v3, p0, Lac;->c:I

    :cond_6
    :goto_3
    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Lac;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_7
    iget-object v0, p0, Lac;->a:[C

    iget v1, p0, Lac;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lac;->c:I

    aget-char v0, v0, v1

    if-le v0, v6, :cond_b

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a

    :goto_4
    if-gez v0, :cond_f

    invoke-virtual {p0}, Lac;->close()V

    iput-object v2, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v2

    goto :goto_1

    :cond_8
    if-ge v1, v6, :cond_9

    iput v3, p0, Lac;->c:I

    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lac;->c(ILjava/lang/String;)V

    :cond_9
    move v1, v3

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lac;->u()V

    goto :goto_3

    :cond_b
    if-eq v0, v6, :cond_6

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lac;->s()V

    goto :goto_3

    :cond_c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lac;->r()V

    goto :goto_3

    :cond_d
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lac;->a(I)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lac;->i()V

    const/4 v0, -0x1

    goto :goto_4

    :cond_f
    iget-wide v3, p0, Lac;->e:J

    iget v1, p0, Lac;->c:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lac;->h:J

    iget v1, p0, Lac;->f:I

    iput v1, p0, Lac;->i:I

    iget v1, p0, Lac;->c:I

    iget v3, p0, Lac;->g:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lac;->j:I

    iput-object v2, p0, Lac;->o:[B

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_11

    iget-object v1, p0, Lac;->k:Lai;

    invoke-virtual {v1}, Lai;->a()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lac;->a(IC)V

    :cond_10
    iget-object v0, p0, Lac;->k:Lai;

    invoke-virtual {v0}, Lai;->g()Lai;

    move-result-object v0

    iput-object v0, p0, Lac;->k:Lai;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lac;->k:Lai;

    invoke-virtual {v1}, Lai;->c()Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lac;->a(IC)V

    :cond_12
    iget-object v0, p0, Lac;->k:Lai;

    invoke-virtual {v0}, Lai;->g()Lai;

    move-result-object v0

    iput-object v0, p0, Lac;->k:Lai;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lac;->k:Lai;

    invoke-virtual {v1}, Lai;->h()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lac;->k:Lai;

    invoke-virtual {v2}, Lai;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lac;->b(ILjava/lang/String;)V

    :cond_14
    invoke-direct {p0}, Lac;->t()I

    move-result v0

    :cond_15
    iget-object v1, p0, Lac;->k:Lai;

    invoke-virtual {v1}, Lai;->c()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, v0}, Lac;->d(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lac;->k:Lai;

    invoke-virtual {v2, v0}, Lai;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0}, Lac;->t()I

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_16

    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lac;->b(ILjava/lang/String;)V

    :cond_16
    invoke-direct {p0}, Lac;->t()I

    move-result v0

    :cond_17
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v0}, Lac;->e(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_5
    if-eqz v1, :cond_1a

    iput-object v0, p0, Lac;->l:Lorg/codehaus/jackson/JsonToken;

    iget-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac;->t:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_1
    if-nez v1, :cond_18

    iget-object v0, p0, Lac;->k:Lai;

    iget v2, p0, Lac;->i:I

    iget v3, p0, Lac;->j:I

    invoke-virtual {v0, v2, v3}, Lai;->a(II)Lai;

    move-result-object v0

    iput-object v0, p0, Lac;->k:Lai;

    :cond_18
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_2
    if-nez v1, :cond_19

    iget-object v0, p0, Lac;->k:Lai;

    iget v2, p0, Lac;->i:I

    iget v3, p0, Lac;->j:I

    invoke-virtual {v0, v2, v3}, Lai;->b(II)Lai;

    move-result-object v0

    iput-object v0, p0, Lac;->k:Lai;

    :cond_19
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_3
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lac;->b(ILjava/lang/String;)V

    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lac;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lac;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lac;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    goto :goto_5

    :sswitch_7
    invoke-virtual {p0, v0}, Lac;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_1a
    iput-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    const/4 v4, 0x0

    const/16 v7, 0x22

    iget-object v0, p0, Lac;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lac;->t:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lac;->t:Z

    iget v0, p0, Lac;->c:I

    iget v1, p0, Lac;->d:I

    if-ge v0, v1, :cond_3

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v2

    array-length v3, v2

    :cond_0
    iget-object v5, p0, Lac;->a:[C

    aget-char v5, v5, v0

    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    if-eqz v6, :cond_2

    if-ne v5, v7, :cond_3

    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    iget v4, p0, Lac;->c:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/c;->a([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac;->c:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_3
    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    iget v5, p0, Lac;->c:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/codehaus/jackson/util/c;->b([CII)V

    iput v0, p0, Lac;->c:I

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_2
    iget v2, p0, Lac;->c:I

    iget v3, p0, Lac;->d:I

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lac;->a()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lac;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lac;->a:[C

    iget v3, p0, Lac;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lac;->c:I

    aget-char v2, v2, v3

    if-gt v2, v8, :cond_5

    if-ne v2, v8, :cond_6

    invoke-direct {p0}, Lac;->v()C

    move-result v2

    :cond_5
    :goto_3
    array-length v3, v1

    if-lt v0, v3, :cond_a

    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v3, v4

    :goto_4
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_2

    :cond_6
    if-gt v2, v7, :cond_5

    if-eq v2, v7, :cond_7

    const/16 v3, 0x20

    if-ge v2, v3, :cond_5

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lac;->c(ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    sget-object v1, Ls;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lac;->k:Lai;

    invoke-virtual {v0}, Lai;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lac;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move v3, v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
