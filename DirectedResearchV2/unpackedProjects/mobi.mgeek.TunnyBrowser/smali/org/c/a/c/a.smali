.class public abstract Lorg/c/a/c/a;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"

# interfaces
.implements Lorg/c/a/c/f;


# static fields
.field static final synthetic k:Z

.field private static final l:Lorg/c/a/d/c/d;

.field private static final m:Z


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Lorg/c/a/c/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/c/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/c/a;->k:Z

    .line 35
    const-class v0, Lorg/c/a/c/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/c/a;->l:Lorg/c/a/d/c/d;

    .line 37
    const-string v0, "org.eclipse.jetty.io.AbstractBuffer.boundsChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/c/a/c/a;->m:Z

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMMUTABLE && VOLATILE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->d(I)V

    .line 67
    iput p1, p0, Lorg/c/a/c/a;->a:I

    .line 68
    iput-boolean p2, p0, Lorg/c/a/c/a;->b:Z

    .line 69
    return-void
.end method


# virtual methods
.method public a(ILorg/c/a/c/f;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 385
    iput v1, p0, Lorg/c/a/c/a;->e:I

    .line 393
    invoke-interface {p2}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 394
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v0

    sub-int/2addr v0, p1

    .line 403
    :cond_0
    invoke-interface {p2}, Lorg/c/a/c/f;->u()[B

    move-result-object v5

    .line 404
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v6

    .line 405
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 406
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v1

    invoke-static {v5, v1, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    :cond_1
    return v0

    .line 407
    :cond_2
    if-eqz v5, :cond_3

    .line 409
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v2

    .line 410
    :goto_0
    if-ge v1, v0, :cond_1

    .line 411
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v5, v2

    invoke-virtual {p0, p1, v2}, Lorg/c/a/c/a;->a(IB)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0

    .line 413
    :cond_3
    if-eqz v6, :cond_4

    .line 415
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v2

    .line 416
    :goto_1
    if-ge v1, v0, :cond_1

    .line 417
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/c/a/c/f;->h(I)B

    move-result v2

    aput-byte v2, v6, p1

    .line 416
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_1

    .line 421
    :cond_4
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v2

    .line 422
    :goto_2
    if-ge v1, v0, :cond_1

    .line 423
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/c/a/c/f;->h(I)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/c/a/c/a;->a(IB)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_2
.end method

.method public a(I[BII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 432
    iput v0, p0, Lorg/c/a/c/a;->e:I

    .line 439
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 441
    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v1

    sub-int p4, v1, p1

    .line 447
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    .line 448
    if-eqz v1, :cond_2

    .line 449
    invoke-static {p2, p3, v1, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    :cond_1
    return p4

    .line 453
    :cond_2
    :goto_0
    if-ge v0, p4, :cond_1

    .line 454
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget-byte v3, p2, p3

    invoke-virtual {p0, p1, v3}, Lorg/c/a/c/a;->a(IB)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    move p1, v2

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;I)I
    .locals 6

    .prologue
    const/16 v0, 0x400

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v3

    .line 689
    invoke-virtual {p0}, Lorg/c/a/c/a;->s()I

    move-result v1

    .line 690
    if-le v1, p2, :cond_0

    move v1, p2

    .line 693
    :cond_0
    if-eqz v3, :cond_2

    .line 695
    iget v0, p0, Lorg/c/a/c/a;->d:I

    invoke-virtual {p1, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 696
    if-lez v0, :cond_1

    .line 697
    iget v1, p0, Lorg/c/a/c/a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/c/a/c/a;->d:I

    .line 713
    :cond_1
    :goto_0
    return v0

    .line 702
    :cond_2
    if-le v1, v0, :cond_3

    :goto_1
    new-array v0, v0, [B

    .line 704
    :goto_2
    if-lez v1, :cond_6

    .line 706
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 707
    if-gez v3, :cond_4

    .line 708
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 702
    goto :goto_1

    .line 709
    :cond_4
    invoke-virtual {p0, v0, v2, v3}, Lorg/c/a/c/a;->b([BII)I

    move-result v4

    .line 710
    sget-boolean v5, Lorg/c/a/c/a;->k:Z

    if-nez v5, :cond_5

    if-eq v3, v4, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 711
    :cond_5
    sub-int/2addr v1, v3

    .line 712
    goto :goto_2

    :cond_6
    move v0, v2

    .line 713
    goto :goto_0
.end method

.method public a([B)I
    .locals 3

    .prologue
    .line 484
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    .line 485
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/c/a/c/a;->a(I[BII)I

    move-result v1

    .line 486
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->e(I)V

    .line 487
    return v1
.end method

.method public a([BII)I
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v1

    .line 258
    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v0

    .line 259
    if-nez v0, :cond_1

    .line 260
    const/4 v0, -0x1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    .line 265
    :cond_2
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/c/a/c/a;->b(I[BII)I

    move-result v0

    .line 266
    if-lez v0, :cond_0

    .line 267
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 640
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    .line 641
    if-eqz v1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 649
    :goto_0
    return-object v0

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 648
    sget-object v1, Lorg/c/a/c/a;->l:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V

    .line 649
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public a(II)Lorg/c/a/c/f;
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 367
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Lorg/c/a/c/z;

    add-int v4, p1, p2

    invoke-virtual {p0}, Lorg/c/a/c/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/c/z;-><init>(Lorg/c/a/c/f;IIII)V

    iput-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    .line 380
    :goto_1
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    return-object v0

    .line 369
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    invoke-virtual {p0}, Lorg/c/a/c/a;->d()Lorg/c/a/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/c/z;->c(Lorg/c/a/c/f;)V

    .line 374
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    invoke-virtual {v0, v2}, Lorg/c/a/c/z;->d(I)V

    .line 375
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/c/a/c/z;->c(I)V

    .line 376
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/c/a/c/z;->e(I)V

    .line 377
    iget-object v0, p0, Lorg/c/a/c/a;->j:Lorg/c/a/c/z;

    invoke-virtual {v0, p1}, Lorg/c/a/c/z;->c(I)V

    goto :goto_1
.end method

.method public a(I)Lorg/c/a/c/o;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lorg/c/a/c/a;->d()Lorg/c/a/c/f;

    move-result-object v0

    .line 88
    instance-of v1, p0, Lorg/c/a/c/g;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/c/a/c/g;

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lorg/c/a/c/p;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/c/a/c/p;-><init>([BIII)V

    .line 91
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/c/a/c/o;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/c/a/c/o;-><init>([BIII)V

    goto :goto_0
.end method

.method public a(B)V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    .line 470
    invoke-virtual {p0, v0, p1}, Lorg/c/a/c/a;->a(IB)V

    .line 471
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->e(I)V

    .line 472
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    const/16 v0, 0x400

    const/4 v5, 0x0

    .line 663
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    .line 665
    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 682
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->e()V

    .line 683
    return-void

    .line 671
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v1

    .line 672
    if-le v1, v0, :cond_2

    :goto_0
    new-array v3, v0, [B

    .line 673
    iget v0, p0, Lorg/c/a/c/a;->c:I

    move v2, v0

    .line 674
    :goto_1
    if-lez v1, :cond_0

    .line 676
    array-length v0, v3

    if-le v1, v0, :cond_3

    array-length v0, v3

    :goto_2
    invoke-virtual {p0, v2, v3, v5, v0}, Lorg/c/a/c/a;->b(I[BII)I

    move-result v4

    .line 677
    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 678
    add-int v0, v2, v4

    .line 679
    sub-int/2addr v1, v4

    move v2, v0

    .line 680
    goto :goto_1

    :cond_2
    move v0, v1

    .line 672
    goto :goto_0

    :cond_3
    move v0, v1

    .line 676
    goto :goto_2
.end method

.method public a(Lorg/c/a/c/f;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/4 v2, 0x0

    .line 200
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 247
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v0

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 207
    :cond_1
    iget v0, p0, Lorg/c/a/c/a;->e:I

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/c/a/c/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 209
    check-cast v0, Lorg/c/a/c/a;

    .line 210
    iget v3, v0, Lorg/c/a/c/a;->e:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/c/a/c/a;->e:I

    iget v0, v0, Lorg/c/a/c/a;->e:I

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v6

    .line 215
    invoke-interface {p1}, Lorg/c/a/c/f;->q()I

    move-result v3

    .line 217
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v7

    .line 218
    invoke-interface {p1}, Lorg/c/a/c/f;->u()[B

    move-result-object v8

    .line 219
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 221
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 223
    aget-byte v3, v7, v4

    .line 224
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v8, v5

    .line 225
    if-eq v3, v0, :cond_5

    .line 227
    if-gt v9, v3, :cond_3

    if-gt v3, v10, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 228
    :cond_3
    if-gt v9, v0, :cond_4

    if-gt v0, v10, :cond_4

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 229
    :cond_4
    if-eq v3, v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v4

    .line 231
    goto :goto_1

    .line 235
    :cond_6
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 237
    invoke-virtual {p0, v4}, Lorg/c/a/c/a;->h(I)B

    move-result v3

    .line 238
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/c/a/c/f;->h(I)B

    move-result v0

    .line 239
    if-eq v3, v0, :cond_9

    .line 241
    if-gt v9, v3, :cond_7

    if-gt v3, v10, :cond_7

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 242
    :cond_7
    if-gt v9, v0, :cond_8

    if-gt v0, v10, :cond_8

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 243
    :cond_8
    if-eq v3, v0, :cond_9

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v4

    .line 245
    goto :goto_2

    :cond_a
    move v0, v1

    .line 247
    goto/16 :goto_0
.end method

.method public a()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v0

    new-array v0, v0, [B

    .line 77
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v2

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/c/a/c/a;->b(I[BII)I

    goto :goto_0
.end method

.method public b(Lorg/c/a/c/f;)I
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    .line 462
    invoke-virtual {p0, v0, p1}, Lorg/c/a/c/a;->a(ILorg/c/a/c/f;)I

    move-result v1

    .line 463
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->e(I)V

    .line 464
    return v1
.end method

.method public b([BII)I
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    .line 477
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/c/a/c/a;->a(I[BII)I

    move-result v1

    .line 478
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->e(I)V

    .line 479
    return v1
.end method

.method public b()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->a(I)Lorg/c/a/c/o;

    move-result-object p0

    goto :goto_0
.end method

.method public b(I)Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    .line 274
    invoke-virtual {p0, v0, p1}, Lorg/c/a/c/a;->a(II)Lorg/c/a/c/f;

    move-result-object v1

    .line 275
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->c(I)V

    .line 276
    return-object v1
.end method

.method public c()Lorg/c/a/c/f;
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-object p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->d()Lorg/c/a/c/f;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Lorg/c/a/c/f;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->a(I)Lorg/c/a/c/o;

    move-result-object p0

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lorg/c/a/c/z;

    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v2

    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v3

    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v4

    iget v5, p0, Lorg/c/a/c/a;->a:I

    invoke-direct/range {v0 .. v5}, Lorg/c/a/c/z;-><init>(Lorg/c/a/c/f;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 509
    sget-boolean v0, Lorg/c/a/c/a;->m:Z

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    if-gez p1, :cond_1

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex>putIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2
    iput p1, p0, Lorg/c/a/c/a;->c:I

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/c/a;->e:I

    .line 521
    return-void
.end method

.method public d()Lorg/c/a/c/f;
    .locals 0

    .prologue
    .line 132
    return-object p0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 526
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    iput p1, p0, Lorg/c/a/c/a;->h:I

    .line 530
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->d(I)V

    .line 138
    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->c(I)V

    .line 139
    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->e(I)V

    .line 140
    return-void
.end method

.method public e(I)V
    .locals 3

    .prologue
    .line 534
    sget-boolean v0, Lorg/c/a/c/a;->m:Z

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putIndex>capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndex>putIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_2
    iput p1, p0, Lorg/c/a/c/a;->d:I

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/c/a;->e:I

    .line 547
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 195
    :goto_0
    return v0

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/c/a/c/f;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 171
    check-cast v0, Lorg/c/a/c/f;

    .line 173
    instance-of v3, p0, Lorg/c/a/c/g;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/c/a/c/g;

    if-eqz v3, :cond_4

    .line 174
    :cond_3
    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->a(Lorg/c/a/c/f;)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_4
    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v3

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 180
    :cond_5
    iget v3, p0, Lorg/c/a/c/a;->e:I

    if-eqz v3, :cond_6

    instance-of v3, p1, Lorg/c/a/c/a;

    if-eqz v3, :cond_6

    .line 182
    check-cast p1, Lorg/c/a/c/a;

    .line 183
    iget v3, p1, Lorg/c/a/c/a;->e:I

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/c/a/c/a;->e:I

    iget v4, p1, Lorg/c/a/c/a;->e:I

    if-eq v3, v4, :cond_6

    move v0, v2

    goto :goto_0

    .line 187
    :cond_6
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v6

    .line 188
    invoke-interface {v0}, Lorg/c/a/c/f;->q()I

    move-result v4

    .line 189
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_8

    .line 191
    invoke-virtual {p0, v4}, Lorg/c/a/c/a;->h(I)B

    move-result v7

    .line 192
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/c/a/c/f;->h(I)B

    move-result v5

    .line 193
    if-eq v7, v5, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v5, v3

    move v3, v4

    .line 194
    goto :goto_1

    :cond_8
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method public f(I)I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result p1

    .line 552
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->c(I)V

    .line 553
    return p1
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Lorg/c/a/c/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    .line 146
    :goto_0
    if-lez v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v2

    sub-int/2addr v2, v0

    .line 150
    if-lez v2, :cond_1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v3

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->d(I)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->c(I)V

    .line 159
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->e(I)V

    .line 161
    :cond_3
    return-void

    .line 145
    :cond_4
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {p0, v0, v2}, Lorg/c/a/c/a;->a(II)Lorg/c/a/c/f;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lorg/c/a/c/a;->a(ILorg/c/a/c/f;)I

    goto :goto_1
.end method

.method public g()B
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lorg/c/a/c/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/c/a/c/a;->c:I

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->h(I)B

    move-result v0

    return v0
.end method

.method public g(I)Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/c/a/c/a;->a(II)Lorg/c/a/c/f;

    move-result-object v0

    .line 570
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->d(I)V

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lorg/c/a/c/a;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 292
    iget v0, p0, Lorg/c/a/c/a;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/c/a/c/a;->f:I

    iget v1, p0, Lorg/c/a/c/a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/c/a/c/a;->g:I

    iget v1, p0, Lorg/c/a/c/a;->d:I

    if-eq v0, v1, :cond_6

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v2

    .line 295
    invoke-virtual {p0}, Lorg/c/a/c/a;->u()[B

    move-result-object v3

    .line 296
    if-nez v3, :cond_2

    .line 298
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 300
    invoke-virtual {p0, v1}, Lorg/c/a/c/a;->h(I)B

    move-result v0

    .line 301
    if-gt v5, v0, :cond_1

    if-gt v0, v6, :cond_1

    .line 302
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 303
    :cond_1
    iget v3, p0, Lorg/c/a/c/a;->e:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/c/a/c/a;->e:I

    move v0, v1

    .line 304
    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 310
    aget-byte v0, v3, v1

    .line 311
    if-gt v5, v0, :cond_3

    if-gt v0, v6, :cond_3

    .line 312
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 313
    :cond_3
    iget v4, p0, Lorg/c/a/c/a;->e:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v0, v4

    iput v0, p0, Lorg/c/a/c/a;->e:I

    move v0, v1

    .line 314
    goto :goto_1

    .line 316
    :cond_4
    iget v0, p0, Lorg/c/a/c/a;->e:I

    if-nez v0, :cond_5

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/c/a;->e:I

    .line 318
    :cond_5
    iget v0, p0, Lorg/c/a/c/a;->c:I

    iput v0, p0, Lorg/c/a/c/a;->f:I

    .line 319
    iget v0, p0, Lorg/c/a/c/a;->d:I

    iput v0, p0, Lorg/c/a/c/a;->g:I

    .line 322
    :cond_6
    iget v0, p0, Lorg/c/a/c/a;->e:I

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/c/a/c/a;->d:I

    iget v1, p0, Lorg/c/a/c/a;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/c/a/c/a;->a:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 332
    iget v1, p0, Lorg/c/a/c/a;->a:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/c/a/c/a;->b:Z

    return v0
.end method

.method public m()I
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lorg/c/a/c/a;->d:I

    iget v1, p0, Lorg/c/a/c/a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lorg/c/a/c/a;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->d(I)V

    .line 348
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lorg/c/a/c/a;->h:I

    return v0
.end method

.method public p()B
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lorg/c/a/c/a;->c:I

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->h(I)B

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lorg/c/a/c/a;->d:I

    return v0
.end method

.method public r()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->g(I)Lorg/c/a/c/f;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v0

    iget v1, p0, Lorg/c/a/c/a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    .prologue
    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p0}, Lorg/c/a/c/a;->d()Lorg/c/a/c/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v0, ",m="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v0, ",g="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string v0, ",p="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    const-string v0, ",c="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0}, Lorg/c/a/c/a;->v()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const-string v0, "]={"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    if-ltz v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lorg/c/a/c/a;->o()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 599
    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->h(I)B

    move-result v1

    .line 600
    invoke-static {v1, v3}, Lorg/c/a/d/q;->a(BLjava/lang/Appendable;)V

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    const-string v0, "}{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_1
    const/4 v1, 0x0

    .line 605
    invoke-virtual {p0}, Lorg/c/a/c/a;->h()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 607
    invoke-virtual {p0, v0}, Lorg/c/a/c/a;->h(I)B

    move-result v2

    .line 608
    invoke-static {v2, v3}, Lorg/c/a/d/q;->a(BLjava/lang/Appendable;)V

    .line 609
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_2

    .line 611
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v4, 0x14

    if-le v1, v4, :cond_2

    .line 613
    const-string v0, " ... "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {p0}, Lorg/c/a/c/a;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    .line 605
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 618
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 626
    invoke-virtual {p0}, Lorg/c/a/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lorg/c/a/c/a;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/c/a/c/a;->i:Ljava/lang/String;

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/a;->i:Ljava/lang/String;

    .line 632
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/c/a/c/a;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/a;->m()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method
