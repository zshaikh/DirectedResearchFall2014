.class public Lorg/c/a/d/l;
.super Ljava/util/AbstractMap;
.source "StringMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/d/n;

.field protected c:Z

.field protected d:Lorg/c/a/d/o;

.field protected e:Ljava/lang/Object;

.field protected f:Ljava/util/HashSet;

.field protected g:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 47
    const/16 v0, 0x11

    iput v0, p0, Lorg/c/a/d/l;->a:I

    .line 48
    new-instance v0, Lorg/c/a/d/n;

    invoke-direct {v0}, Lorg/c/a/d/n;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/d/l;->c:Z

    .line 50
    iput-object v1, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 51
    iput-object v1, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    .line 53
    iget-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/l;->g:Ljava/util/Set;

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/c/a/d/l;-><init>()V

    .line 68
    iput-boolean p1, p0, Lorg/c/a/d/l;->c:Z

    .line 69
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v0, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 257
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/c/a/d/l;->a(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 255
    if-nez v0, :cond_1

    .line 256
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_2

    .line 131
    iget-object v0, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 132
    iput-object p2, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Lorg/c/a/d/o;

    invoke-direct {v2, p0, v1}, Lorg/c/a/d/o;-><init>(Lorg/c/a/d/l;Lorg/c/a/d/m;)V

    iput-object v2, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 136
    iget-object v1, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 234
    :cond_1
    :goto_0
    return-object v1

    .line 141
    :cond_2
    iget-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    move v2, v5

    move-object v3, v1

    move v6, v4

    move-object v7, v0

    move-object v0, v1

    .line 148
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 153
    if-ne v6, v4, :cond_10

    .line 158
    iget-object v0, v7, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    move-object v6, v7

    move-object v3, v1

    move v8, v5

    move-object v7, v0

    .line 162
    :goto_3
    if-eqz v7, :cond_7

    .line 165
    iget-object v0, v7, Lorg/c/a/d/n;->a:[C

    aget-char v0, v0, v8

    if-eq v0, v9, :cond_3

    iget-boolean v0, p0, Lorg/c/a/d/l;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/c/a/d/n;->b:[C

    aget-char v0, v0, v8

    if-ne v0, v9, :cond_5

    .line 168
    :cond_3
    add-int/lit8 v0, v8, 0x1

    .line 169
    iget-object v3, v7, Lorg/c/a/d/n;->a:[C

    array-length v3, v3

    if-ne v0, v3, :cond_11

    move v0, v2

    move v3, v4

    move-object v2, v1

    .line 148
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v10, v0

    move-object v0, v6

    move v6, v3

    move-object v3, v2

    move v2, v10

    goto :goto_1

    .line 158
    :cond_4
    iget-object v0, v7, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    iget v3, p0, Lorg/c/a/d/l;->a:I

    rem-int v3, v9, v3

    aget-object v0, v0, v3

    goto :goto_2

    .line 176
    :cond_5
    if-nez v8, :cond_6

    .line 180
    iget-object v0, v7, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    move-object v3, v7

    move-object v7, v0

    goto :goto_3

    .line 185
    :cond_6
    invoke-virtual {v7, p0, v8}, Lorg/c/a/d/n;->a(Lorg/c/a/d/l;I)Lorg/c/a/d/n;

    .line 186
    add-int/lit8 v0, v2, -0x1

    move-object v2, v3

    move v3, v4

    .line 188
    goto :goto_4

    .line 193
    :cond_7
    new-instance v7, Lorg/c/a/d/n;

    iget-boolean v0, p0, Lorg/c/a/d/l;->c:Z

    invoke-direct {v7, v0, p1, v2}, Lorg/c/a/d/n;-><init>(ZLjava/lang/String;I)V

    .line 195
    if-eqz v3, :cond_a

    .line 196
    iput-object v7, v3, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    move v6, v8

    .line 222
    :cond_8
    :goto_5
    if-eqz v7, :cond_1

    .line 225
    if-lez v6, :cond_9

    .line 226
    invoke-virtual {v7, p0, v6}, Lorg/c/a/d/n;->a(Lorg/c/a/d/l;I)Lorg/c/a/d/n;

    .line 228
    :cond_9
    iget-object v1, v7, Lorg/c/a/d/n;->f:Ljava/lang/Object;

    .line 229
    iput-object p1, v7, Lorg/c/a/d/n;->e:Ljava/lang/String;

    .line 230
    iput-object p2, v7, Lorg/c/a/d/n;->f:Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_a
    if-eqz v6, :cond_f

    .line 199
    iget-object v0, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-nez v0, :cond_b

    .line 200
    iget v0, p0, Lorg/c/a/d/l;->a:I

    new-array v0, v0, [Lorg/c/a/d/n;

    iput-object v0, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    .line 201
    :cond_b
    iget-object v0, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    iget v2, p0, Lorg/c/a/d/l;->a:I

    rem-int v2, v9, v2

    aput-object v7, v0, v2

    .line 202
    iget-object v0, v7, Lorg/c/a/d/n;->b:[C

    aget-char v0, v0, v5

    iget v2, p0, Lorg/c/a/d/l;->a:I

    rem-int/2addr v0, v2

    .line 203
    iget-object v2, v7, Lorg/c/a/d/n;->b:[C

    if-eqz v2, :cond_c

    iget-object v2, v7, Lorg/c/a/d/n;->a:[C

    aget-char v2, v2, v5

    iget v3, p0, Lorg/c/a/d/l;->a:I

    rem-int/2addr v2, v3

    if-eq v2, v0, :cond_c

    .line 205
    iget-object v2, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    .line 206
    iget-object v2, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    aput-object v7, v2, v0

    :cond_c
    :goto_6
    move v6, v8

    .line 215
    goto :goto_5

    .line 209
    :cond_d
    iget-object v2, v6, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    aget-object v0, v2, v0

    .line 210
    :goto_7
    iget-object v2, v0, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    if-eqz v2, :cond_e

    .line 211
    iget-object v0, v0, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    goto :goto_7

    .line 212
    :cond_e
    iput-object v7, v0, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    goto :goto_6

    .line 217
    :cond_f
    iput-object v7, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    move v6, v8

    .line 218
    goto :goto_5

    :cond_10
    move v8, v6

    move-object v6, v0

    goto/16 :goto_3

    :cond_11
    move v3, v0

    move v0, v2

    move-object v2, v1

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;II)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 270
    if-nez p1, :cond_1

    .line 271
    iget-object v1, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 313
    :cond_0
    :goto_0
    return-object v1

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    move v5, v3

    move v4, v2

    .line 278
    :goto_1
    if-ge v5, p3, :cond_6

    .line 280
    add-int v6, p2, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 283
    if-ne v4, v2, :cond_8

    .line 286
    iget-object v4, v0, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-nez v4, :cond_4

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move v0, v3

    .line 290
    :goto_3
    if-eqz v4, :cond_0

    .line 293
    iget-object v7, v4, Lorg/c/a/d/n;->a:[C

    aget-char v7, v7, v0

    if-eq v7, v6, :cond_2

    iget-boolean v7, p0, Lorg/c/a/d/l;->c:Z

    if-eqz v7, :cond_5

    iget-object v7, v4, Lorg/c/a/d/n;->b:[C

    aget-char v7, v7, v0

    if-ne v7, v6, :cond_5

    .line 295
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 296
    iget-object v6, v4, Lorg/c/a/d/n;->a:[C

    array-length v6, v6

    if-ne v0, v6, :cond_3

    move v0, v2

    .line 278
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v8, v0

    move-object v0, v4

    move v4, v8

    goto :goto_1

    .line 286
    :cond_4
    iget-object v0, v0, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    iget v4, p0, Lorg/c/a/d/l;->a:I

    rem-int v4, v6, v4

    aget-object v0, v0, v4

    goto :goto_2

    .line 302
    :cond_5
    if-gtz v0, :cond_0

    .line 305
    iget-object v4, v4, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    goto :goto_3

    .line 310
    :cond_6
    if-gtz v4, :cond_0

    .line 311
    if-eqz v0, :cond_7

    iget-object v2, v0, Lorg/c/a/d/n;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_7
    move-object v1, v0

    .line 313
    goto :goto_0

    :cond_8
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_3
.end method

.method public a([BII)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 384
    iget-object v0, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    move v5, v3

    move v4, v1

    .line 391
    :goto_1
    if-ge v5, p3, :cond_9

    .line 393
    add-int v6, p2, v5

    aget-byte v6, p1, v6

    int-to-char v6, v6

    .line 396
    if-ne v4, v1, :cond_b

    .line 400
    iget-object v4, v0, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-nez v4, :cond_5

    move-object v4, v2

    .line 402
    :goto_2
    if-nez v4, :cond_2

    if-gtz v5, :cond_0

    :cond_2
    move v0, v3

    .line 408
    :goto_3
    if-eqz v4, :cond_8

    .line 411
    iget-object v7, v4, Lorg/c/a/d/n;->a:[C

    aget-char v7, v7, v0

    if-eq v7, v6, :cond_3

    iget-boolean v7, p0, Lorg/c/a/d/l;->c:Z

    if-eqz v7, :cond_6

    iget-object v7, v4, Lorg/c/a/d/n;->b:[C

    aget-char v7, v7, v0

    if-ne v7, v6, :cond_6

    .line 413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 414
    iget-object v6, v4, Lorg/c/a/d/n;->a:[C

    array-length v6, v6

    if-ne v0, v6, :cond_4

    move v0, v1

    .line 391
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v8, v0

    move-object v0, v4

    move v4, v8

    goto :goto_1

    .line 400
    :cond_5
    iget-object v4, v0, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    iget v7, p0, Lorg/c/a/d/l;->a:I

    rem-int v7, v6, v7

    aget-object v4, v4, v7

    goto :goto_2

    .line 420
    :cond_6
    if-lez v0, :cond_7

    move-object v0, v2

    goto :goto_0

    .line 423
    :cond_7
    iget-object v4, v4, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 425
    goto :goto_0

    .line 428
    :cond_9
    if-lez v4, :cond_a

    move-object v0, v2

    goto :goto_0

    .line 429
    :cond_a
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/c/a/d/n;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 430
    goto :goto_0

    :cond_b
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_3
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    iget-object v0, v0, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be set before first put"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-boolean p1, p0, Lorg/c/a/d/l;->c:Z

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 447
    if-nez p1, :cond_2

    .line 449
    iget-object v0, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 453
    iput-object v5, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 454
    iput-object v5, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    :cond_0
    move-object v5, v0

    .line 505
    :cond_1
    :goto_0
    return-object v5

    .line 459
    :cond_2
    iget-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    move v2, v3

    move-object v4, v0

    move v0, v1

    .line 464
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 469
    if-ne v2, v3, :cond_3

    .line 472
    iget-object v2, v4, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    if-nez v2, :cond_6

    move-object v2, v5

    :goto_2
    move-object v4, v2

    move v2, v1

    .line 476
    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    .line 479
    iget-object v7, v4, Lorg/c/a/d/n;->a:[C

    aget-char v7, v7, v2

    if-eq v7, v6, :cond_4

    iget-boolean v7, p0, Lorg/c/a/d/l;->c:Z

    if-eqz v7, :cond_7

    iget-object v7, v4, Lorg/c/a/d/n;->b:[C

    aget-char v7, v7, v2

    if-ne v7, v6, :cond_7

    .line 481
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 482
    iget-object v6, v4, Lorg/c/a/d/n;->a:[C

    array-length v6, v6

    if-ne v2, v6, :cond_5

    move v2, v3

    .line 464
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_6
    iget-object v2, v4, Lorg/c/a/d/n;->d:[Lorg/c/a/d/n;

    iget v4, p0, Lorg/c/a/d/l;->a:I

    rem-int v4, v6, v4

    aget-object v2, v2, v4

    goto :goto_2

    .line 488
    :cond_7
    if-gtz v2, :cond_1

    .line 491
    iget-object v4, v4, Lorg/c/a/d/n;->c:Lorg/c/a/d/n;

    goto :goto_3

    .line 496
    :cond_8
    if-gtz v2, :cond_1

    .line 497
    if-eqz v4, :cond_9

    iget-object v0, v4, Lorg/c/a/d/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 500
    :cond_9
    iget-object v0, v4, Lorg/c/a/d/n;->f:Ljava/lang/Object;

    .line 501
    iget-object v1, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 502
    iput-object v5, v4, Lorg/c/a/d/n;->f:Ljava/lang/Object;

    .line 503
    iput-object v5, v4, Lorg/c/a/d/n;->e:Ljava/lang/String;

    move-object v5, v0

    .line 505
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    new-instance v0, Lorg/c/a/d/n;

    invoke-direct {v0}, Lorg/c/a/d/n;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/l;->b:Lorg/c/a/d/n;

    .line 544
    iput-object v1, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    .line 545
    iput-object v1, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 547
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    if-nez p1, :cond_2

    .line 534
    iget-object v2, p0, Lorg/c/a/d/l;->d:Lorg/c/a/d/o;

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 534
    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lorg/c/a/d/l;->a(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/c/a/d/l;->g:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lorg/c/a/d/l;->e:Ljava/lang/Object;

    .line 245
    :goto_0
    return-object v0

    .line 243
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 244
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/c/a/d/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    .prologue
    .line 690
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 691
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 692
    invoke-virtual {p0, v1}, Lorg/c/a/d/l;->a(Z)V

    .line 693
    invoke-virtual {p0, v0}, Lorg/c/a/d/l;->putAll(Ljava/util/Map;)V

    .line 694
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/c/a/d/l;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .prologue
    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 682
    iget-boolean v1, p0, Lorg/c/a/d/l;->c:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 683
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 684
    return-void
.end method
