.class public Lorg/c/a/b/q;
.super Ljava/lang/Object;
.source "HttpParser.java"


# static fields
.field private static final i:Lorg/c/a/d/c/d;


# instance fields
.field protected final a:Lorg/c/a/c/z;

.field protected b:I

.field protected c:B

.field protected d:I

.field protected e:J

.field protected f:J

.field protected g:I

.field protected h:I

.field private final j:Lorg/c/a/b/r;

.field private final k:Lorg/c/a/c/l;

.field private final l:Lorg/c/a/c/s;

.field private m:Lorg/c/a/c/f;

.field private n:Lorg/c/a/c/f;

.field private o:Lorg/c/a/c/f;

.field private p:Lorg/c/a/c/i;

.field private final q:Lorg/c/a/c/aa;

.field private final r:Lorg/c/a/c/aa;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/c/a/b/q;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/c/l;Lorg/c/a/c/s;Lorg/c/a/b/r;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/c/a/c/z;

    invoke-direct {v0}, Lorg/c/a/c/z;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 114
    iput-object p1, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    .line 115
    iput-object p2, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    .line 116
    iput-object p3, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    .line 117
    new-instance v0, Lorg/c/a/c/aa;

    invoke-direct {v0}, Lorg/c/a/c/aa;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    .line 118
    new-instance v0, Lorg/c/a/c/aa;

    invoke-direct {v0}, Lorg/c/a/c/aa;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/c/a/b/q;->w:Z

    .line 140
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 169
    const/16 v0, -0xe

    invoke-virtual {p0, v0}, Lorg/c/a/b/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/b/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/c/a/b/q;->f()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    invoke-virtual {p0}, Lorg/c/a/b/q;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->m()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v3}, Lorg/c/a/c/z;->i()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/c/a/b/q;->f()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v3, v2

    .line 240
    goto :goto_1

    .line 242
    :cond_2
    return v0
.end method

.method public f()I
    .locals 12

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 257
    :try_start_0
    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/c/a/b/q;->j()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 264
    :cond_2
    iget v0, p0, Lorg/c/a/b/q;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/c/a/b/q;->f:J

    iget-wide v2, p0, Lorg/c/a/b/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 267
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I
    :try_end_0
    .catch Lorg/c/a/b/d; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 274
    if-nez v0, :cond_5

    .line 276
    const/4 v1, -0x1

    .line 277
    const/4 v0, 0x0

    .line 280
    :try_start_1
    invoke-virtual {p0}, Lorg/c/a/b/q;->g()I

    move-result v1

    .line 281
    sget-object v2, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    const-string v3, "filled {}/{}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v7}, Lorg/c/a/c/f;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/c/a/b/d; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_1
    if-lez v1, :cond_6

    .line 290
    const/4 v5, 0x1

    .line 335
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 341
    :cond_5
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->u()[B

    move-result-object v6

    .line 342
    iget v4, p0, Lorg/c/a/b/q;->b:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 343
    :goto_2
    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-gez v0, :cond_3b

    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_3b

    .line 345
    iget v2, p0, Lorg/c/a/b/q;->b:I

    if-eq v1, v2, :cond_5c

    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 348
    iget v1, p0, Lorg/c/a/b/q;->b:I

    move v4, v1

    move v5, v3

    .line 351
    :goto_3
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->g()B

    move-result v7

    .line 353
    iget-byte v1, p0, Lorg/c/a/b/q;->c:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    const/16 v1, 0xa

    if-ne v7, v1, :cond_b

    .line 355
    const/16 v1, 0xa

    iput-byte v1, p0, Lorg/c/a/b/q;->c:B

    move v1, v4

    move v2, v0

    move v3, v5

    .line 356
    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    invoke-virtual {p0}, Lorg/c/a/b/q;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/c/a/b/d; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 988
    :catch_1
    move-exception v0

    .line 990
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/c/a/b/q;->v:Z

    .line 991
    const/4 v1, 0x7

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 992
    throw v0

    .line 291
    :cond_6
    if-gez v1, :cond_4

    .line 293
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lorg/c/a/b/q;->v:Z

    .line 296
    iget v1, p0, Lorg/c/a/b/q;->b:I

    if-lez v1, :cond_7

    .line 298
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lorg/c/a/b/q;->w:Z

    if-nez v1, :cond_7

    .line 300
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v1

    .line 301
    iget-wide v2, p0, Lorg/c/a/b/q;->f:J

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/c/a/b/q;->f:J

    .line 302
    iget-object v2, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v2, v1}, Lorg/c/a/c/z;->c(Lorg/c/a/c/f;)V

    .line 303
    iget-object v2, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v2, v1}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;)V

    .line 308
    :cond_7
    iget v1, p0, Lorg/c/a/b/q;->b:I

    sparse-switch v1, :sswitch_data_0

    .line 321
    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 322
    iget-boolean v1, p0, Lorg/c/a/b/q;->w:Z

    if-nez v1, :cond_8

    .line 323
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v1}, Lorg/c/a/b/r;->b()V

    .line 324
    :cond_8
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v2, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v1, v2, v3}, Lorg/c/a/b/r;->a(J)V

    .line 327
    :goto_4
    if-eqz v0, :cond_9

    .line 328
    throw v0

    .line 312
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto :goto_4

    .line 316
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 317
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v2, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v1, v2, v3}, Lorg/c/a/b/r;->a(J)V

    goto :goto_4

    .line 330
    :cond_9
    invoke-virtual {p0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/c/a/b/q;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 331
    new-instance v0, Lorg/c/a/c/t;

    invoke-direct {v0}, Lorg/c/a/c/t;-><init>()V

    throw v0

    .line 333
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 358
    :cond_b
    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/c/a/b/q;->c:B

    .line 360
    iget v1, p0, Lorg/c/a/b/q;->b:I

    packed-switch v1, :pswitch_data_0

    :cond_c
    :goto_5
    :pswitch_0
    :sswitch_2
    move v1, v4

    move v2, v0

    move v3, v5

    .line 796
    goto/16 :goto_2

    .line 363
    :pswitch_1
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lorg/c/a/b/q;->e:J

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    .line 365
    const/16 v1, 0x20

    if-gt v7, v1, :cond_d

    if-gez v7, :cond_c

    .line 367
    :cond_d
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 368
    const/16 v1, -0xd

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto :goto_5

    .line 373
    :pswitch_2
    const/16 v1, 0x20

    if-ne v7, v1, :cond_f

    .line 375
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->h()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 376
    sget-object v1, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v2}, Lorg/c/a/c/h;->a(Lorg/c/a/c/f;)Lorg/c/a/c/i;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, -0x1

    :goto_6
    iput v1, p0, Lorg/c/a/b/q;->t:I

    .line 377
    const/16 v1, -0xc

    iput v1, p0, Lorg/c/a/b/q;->b:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 378
    goto/16 :goto_2

    .line 376
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 380
    :cond_f
    const/16 v1, 0x20

    if-ge v7, v1, :cond_c

    if-ltz v7, :cond_c

    .line 382
    new-instance v0, Lorg/c/a/b/d;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/c/a/b/d;-><init>(I)V

    throw v0

    .line 387
    :pswitch_3
    const/16 v1, 0x20

    if-gt v7, v1, :cond_10

    if-gez v7, :cond_12

    .line 389
    :cond_10
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 390
    iget v1, p0, Lorg/c/a/b/q;->t:I

    if-ltz v1, :cond_11

    .line 392
    const/16 v1, -0xb

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 393
    add-int/lit8 v1, v7, -0x30

    iput v1, p0, Lorg/c/a/b/q;->t:I

    goto :goto_5

    .line 396
    :cond_11
    const/16 v1, -0xa

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto :goto_5

    .line 398
    :cond_12
    const/16 v1, 0x20

    if-ge v7, v1, :cond_c

    .line 400
    new-instance v0, Lorg/c/a/b/d;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/c/a/b/d;-><init>(I)V

    throw v0

    .line 405
    :pswitch_4
    const/16 v1, 0x20

    if-ne v7, v1, :cond_13

    .line 407
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->h()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 408
    const/16 v1, -0x9

    iput v1, p0, Lorg/c/a/b/q;->b:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 409
    goto/16 :goto_2

    .line 411
    :cond_13
    const/16 v1, 0x30

    if-lt v7, v1, :cond_14

    const/16 v1, 0x39

    if-gt v7, v1, :cond_14

    .line 413
    iget v1, p0, Lorg/c/a/b/q;->t:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v7, -0x30

    add-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/b/q;->t:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 414
    goto/16 :goto_2

    .line 416
    :cond_14
    const/16 v1, 0x20

    if-ge v7, v1, :cond_15

    if-ltz v7, :cond_15

    .line 418
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v2, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    iget-object v3, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2, v3}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v2

    iget v3, p0, Lorg/c/a/b/q;->t:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 419
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 420
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 421
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 422
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    move v1, v4

    move v2, v0

    move v3, v5

    .line 424
    goto/16 :goto_2

    .line 427
    :cond_15
    const/16 v1, -0xa

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lorg/c/a/b/q;->t:I

    goto/16 :goto_5

    .line 432
    :pswitch_5
    const/16 v1, 0x20

    if-ne v7, v1, :cond_16

    .line 434
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->h()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 435
    const/16 v1, -0x9

    iput v1, p0, Lorg/c/a/b/q;->b:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 436
    goto/16 :goto_2

    .line 438
    :cond_16
    const/16 v1, 0x20

    if-ge v7, v1, :cond_c

    if-ltz v7, :cond_c

    .line 441
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v1, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v2}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->r()Lorg/c/a/c/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    .line 443
    const/4 v0, 0x7

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 444
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    .line 445
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 446
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 451
    :pswitch_6
    const/16 v1, 0x20

    if-gt v7, v1, :cond_17

    if-gez v7, :cond_18

    .line 453
    :cond_17
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 454
    const/4 v1, -0x6

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 456
    :cond_18
    const/16 v1, 0x20

    if-ge v7, v1, :cond_c

    .line 458
    iget v1, p0, Lorg/c/a/b/q;->t:I

    if-lez v1, :cond_19

    .line 460
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v2, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    iget-object v3, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2, v3}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v2

    iget v3, p0, Lorg/c/a/b/q;->t:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 461
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 462
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 463
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 464
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    goto/16 :goto_5

    .line 470
    :cond_19
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v1, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v2}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    .line 472
    const/4 v0, 0x7

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 473
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    .line 474
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 475
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 481
    :pswitch_7
    const/16 v1, 0xd

    if-eq v7, v1, :cond_1a

    const/16 v1, 0xa

    if-ne v7, v1, :cond_c

    .line 484
    :cond_1a
    iget v1, p0, Lorg/c/a/b/q;->t:I

    if-lez v1, :cond_1b

    .line 485
    iget-object v2, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v1, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    iget-object v3, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v3}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    iget v3, p0, Lorg/c/a/b/q;->t:I

    iget-object v8, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v8}, Lorg/c/a/c/f;->r()Lorg/c/a/c/f;

    move-result-object v8

    invoke-virtual {v2, v1, v3, v8}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 488
    :goto_7
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 489
    sget-object v2, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    invoke-virtual {v2, v1}, Lorg/c/a/c/h;->c(Lorg/c/a/c/f;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, p0, Lorg/c/a/b/q;->v:Z

    .line 490
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 491
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 492
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    move v1, v4

    move v2, v0

    move v3, v5

    .line 494
    goto/16 :goto_2

    .line 487
    :cond_1b
    iget-object v2, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    sget-object v1, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    iget-object v3, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v3}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v3

    iget-object v8, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    sget-object v1, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    iget-object v9, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v9}, Lorg/c/a/c/f;->r()Lorg/c/a/c/f;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    invoke-virtual {v2, v3, v8, v1}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    goto :goto_7

    .line 489
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8

    .line 499
    :pswitch_8
    sparse-switch v7, :sswitch_data_1

    .line 514
    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1}, Lorg/c/a/c/aa;->m()I

    move-result v1

    if-gtz v1, :cond_1d

    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v1}, Lorg/c/a/c/aa;->m()I

    move-result v1

    if-gtz v1, :cond_1d

    iget-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 516
    :cond_1d
    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    move-object v3, v1

    .line 517
    :goto_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    .line 518
    iget-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    if-nez v1, :cond_25

    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    .line 520
    :goto_a
    sget-object v2, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    invoke-virtual {v2, v3}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I

    move-result v2

    .line 521
    if-ltz v2, :cond_1e

    .line 525
    sparse-switch v2, :sswitch_data_2

    .line 592
    :cond_1e
    :goto_b
    iget-object v2, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v2, v3, v1}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 593
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 594
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v2}, Lorg/c/a/c/aa;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->e(I)V

    .line 595
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    .line 597
    :cond_1f
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/c/a/c/f;->d(I)V

    .line 600
    const/16 v1, 0xd

    if-eq v7, v1, :cond_20

    const/16 v1, 0xa

    if-ne v7, v1, :cond_2e

    .line 603
    :cond_20
    iget v0, p0, Lorg/c/a/b/q;->t:I

    if-lez v0, :cond_28

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_21

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_21

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_28

    .line 607
    :cond_21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/b/q;->e:J

    .line 620
    :cond_22
    :goto_c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/b/q;->f:J

    .line 621
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 622
    iget-byte v0, p0, Lorg/c/a/b/q;->c:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    .line 623
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 627
    :cond_23
    iget-wide v0, p0, Lorg/c/a/b/q;->e:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    const v0, 0x7fffffff

    :goto_d
    packed-switch v0, :pswitch_data_1

    .line 646
    const/4 v0, 0x2

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 647
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    .line 650
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 506
    :sswitch_3
    const/4 v1, -0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 507
    const/4 v1, -0x2

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 516
    :cond_24
    sget-object v1, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    iget-object v2, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    invoke-virtual {v1, v2}, Lorg/c/a/b/o;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_9

    .line 518
    :cond_25
    new-instance v1, Lorg/c/a/c/o;

    iget-object v2, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 528
    :sswitch_4
    iget-wide v8, p0, Lorg/c/a/b/q;->e:J
    :try_end_3
    .catch Lorg/c/a/b/d; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/16 v10, -0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1e

    .line 532
    :try_start_4
    invoke-static {v1}, Lorg/c/a/c/k;->b(Lorg/c/a/c/f;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/c/a/b/q;->e:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/c/a/b/d; {:try_start_4 .. :try_end_4} :catch_1

    .line 539
    :try_start_5
    iget-wide v8, p0, Lorg/c/a/b/q;->e:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1e

    .line 540
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/c/a/b/q;->e:J

    goto/16 :goto_b

    .line 534
    :catch_2
    move-exception v0

    .line 536
    sget-object v1, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 537
    new-instance v0, Lorg/c/a/b/d;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/c/a/b/d;-><init>(I)V

    throw v0

    .line 545
    :sswitch_5
    sget-object v2, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    invoke-virtual {v2, v1}, Lorg/c/a/b/n;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v1

    .line 546
    sget-object v2, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    invoke-virtual {v2, v1}, Lorg/c/a/b/n;->c(Lorg/c/a/c/f;)I

    move-result v2

    .line 547
    const/4 v8, 0x2

    if-ne v8, v2, :cond_26

    .line 548
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/c/a/b/q;->e:J

    goto/16 :goto_b

    .line 551
    :cond_26
    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2}, Lorg/c/a/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    const-string v8, "chunked"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 553
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/c/a/b/q;->e:J

    goto/16 :goto_b

    .line 555
    :cond_27
    const-string v8, "chunked"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1e

    .line 556
    new-instance v0, Lorg/c/a/b/d;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/c/a/b/d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 561
    :sswitch_6
    sget-object v2, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    invoke-virtual {v2, v1}, Lorg/c/a/b/n;->c(Lorg/c/a/c/f;)I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    goto/16 :goto_b

    .line 573
    :sswitch_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v9, :cond_1e

    aget-object v10, v8, v2

    .line 575
    sget-object v11, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/c/a/b/n;->c(Ljava/lang/String;)I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    .line 573
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 564
    :sswitch_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/c/a/b/q;->v:Z

    goto/16 :goto_b

    .line 568
    :sswitch_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/c/a/b/q;->v:Z

    goto/16 :goto_b

    .line 578
    :sswitch_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/c/a/b/q;->v:Z

    goto :goto_10

    .line 582
    :sswitch_b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/c/a/b/q;->v:Z

    goto :goto_10

    .line 609
    :cond_28
    iget-wide v0, p0, Lorg/c/a/b/q;->e:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 611
    iget v0, p0, Lorg/c/a/b/q;->t:I

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_29

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_29

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2a

    .line 615
    :cond_29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/b/q;->e:J

    goto/16 :goto_c

    .line 617
    :cond_2a
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/c/a/b/q;->e:J

    goto/16 :goto_c

    .line 627
    :cond_2b
    iget-wide v0, p0, Lorg/c/a/b/q;->e:J

    long-to-int v0, v0

    goto/16 :goto_d

    .line 630
    :pswitch_9
    const/4 v0, 0x1

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 631
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    goto/16 :goto_e

    .line 635
    :pswitch_a
    const/4 v0, 0x3

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 636
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    goto/16 :goto_e

    .line 640
    :pswitch_b
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v0}, Lorg/c/a/b/r;->a()V

    .line 641
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2d

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_11
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 642
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 643
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 641
    :cond_2d
    const/4 v0, 0x7

    goto :goto_11

    .line 655
    :cond_2e
    const/4 v1, 0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 656
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 657
    const/4 v1, -0x4

    iput v1, p0, Lorg/c/a/b/q;->b:I

    .line 660
    if-eqz v6, :cond_c

    .line 662
    sget-object v1, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v6, v2, v3}, Lorg/c/a/b/o;->a([BII)Lorg/c/a/c/i;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    .line 664
    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    if-eqz v1, :cond_c

    .line 666
    iget-object v0, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    invoke-virtual {v0}, Lorg/c/a/c/i;->m()I

    move-result v0

    iput v0, p0, Lorg/c/a/b/q;->d:I

    .line 667
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->o()I

    move-result v1

    iget v2, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/c/a/c/f;->c(I)V

    .line 668
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    goto/16 :goto_5

    .line 678
    :pswitch_c
    sparse-switch v7, :sswitch_data_5

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    .line 699
    iget v1, p0, Lorg/c/a/b/q;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    .line 700
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 701
    :cond_2f
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->h()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 702
    const/4 v1, -0x3

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 682
    :sswitch_c
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_30

    .line 683
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 684
    :cond_30
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 685
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 688
    :sswitch_d
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_31

    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    if-nez v1, :cond_31

    .line 689
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v7, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 690
    :cond_31
    const/4 v1, -0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 691
    const/4 v1, -0x2

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 709
    :pswitch_d
    sparse-switch v7, :sswitch_data_6

    .line 730
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    .line 731
    iget v1, p0, Lorg/c/a/b/q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    goto/16 :goto_5

    .line 713
    :sswitch_e
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_32

    .line 714
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 715
    :cond_32
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 716
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 719
    :sswitch_f
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_33

    iget-object v1, p0, Lorg/c/a/b/q;->p:Lorg/c/a/c/i;

    if-nez v1, :cond_33

    .line 720
    iget-object v1, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v7, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 721
    :cond_33
    const/4 v1, -0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 722
    const/4 v1, -0x2

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 726
    :sswitch_10
    const/4 v1, -0x4

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 737
    :pswitch_e
    sparse-switch v7, :sswitch_data_7

    .line 761
    iget v1, p0, Lorg/c/a/b/q;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_34

    .line 762
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->n()V

    .line 763
    :cond_34
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->h()I

    move-result v1

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 764
    const/4 v1, -0x1

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 741
    :sswitch_11
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_35

    .line 743
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v1}, Lorg/c/a/c/aa;->m()I

    move-result v1

    if-nez v1, :cond_36

    .line 744
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 753
    :cond_35
    :goto_12
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 754
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 748
    :cond_36
    iget-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    if-nez v1, :cond_37

    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    .line 749
    :cond_37
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/c/a/c/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    goto :goto_12

    .line 770
    :pswitch_f
    sparse-switch v7, :sswitch_data_8

    .line 794
    iget v1, p0, Lorg/c/a/b/q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/b/q;->d:I

    goto/16 :goto_5

    .line 774
    :sswitch_12
    iget v1, p0, Lorg/c/a/b/q;->d:I

    if-lez v1, :cond_38

    .line 776
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    invoke-virtual {v1}, Lorg/c/a/c/aa;->m()I

    move-result v1

    if-nez v1, :cond_39

    .line 777
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 786
    :cond_38
    :goto_13
    iput-byte v7, p0, Lorg/c/a/b/q;->c:B

    .line 787
    const/4 v1, -0x5

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 781
    :cond_39
    iget-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    if-nez v1, :cond_3a

    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/c/a/c/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    .line 782
    :cond_3a
    iget-object v1, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->o()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->o()I

    move-result v3

    iget v8, p0, Lorg/c/a/b/q;->d:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/c/a/c/aa;->b(II)V

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/c/a/c/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/b/q;->s:Ljava/lang/String;

    goto :goto_13

    .line 791
    :sswitch_13
    const/4 v1, -0x2

    iput v1, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_5

    .line 803
    :cond_3b
    iget v0, p0, Lorg/c/a/b/q;->t:I

    if-lez v0, :cond_3d

    iget-boolean v0, p0, Lorg/c/a/b/q;->w:Z

    if-eqz v0, :cond_3d

    .line 805
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-nez v0, :cond_3c

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3e

    iget v0, p0, Lorg/c/a/b/q;->t:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_3e

    :cond_3c
    const/4 v0, 0x0

    :goto_14
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 806
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->e:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 813
    :cond_3d
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v1

    .line 815
    iget v2, p0, Lorg/c/a/b/q;->b:I

    move v0, v3

    .line 816
    :goto_15
    iget v3, p0, Lorg/c/a/b/q;->b:I

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 818
    iget v3, p0, Lorg/c/a/b/q;->b:I

    if-eq v2, v3, :cond_5b

    .line 820
    add-int/lit8 v2, v0, 0x1

    .line 821
    iget v0, p0, Lorg/c/a/b/q;->b:I

    move v3, v2

    move v2, v0

    .line 824
    :goto_16
    iget-byte v0, p0, Lorg/c/a/b/q;->c:B

    const/16 v4, 0xd

    if-ne v0, v4, :cond_3f

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3f

    .line 826
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 827
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v1

    move v0, v3

    .line 828
    goto :goto_15

    .line 805
    :cond_3e
    const/4 v0, 0x7

    goto :goto_14

    .line 830
    :cond_3f
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 831
    iget v0, p0, Lorg/c/a/b/q;->b:I

    packed-switch v0, :pswitch_data_2

    .line 983
    :cond_40
    :goto_17
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v1

    move v0, v3

    goto :goto_15

    .line 834
    :pswitch_10
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v0

    .line 835
    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/c/a/b/q;->f:J

    .line 836
    iget-object v1, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v1, v0}, Lorg/c/a/c/z;->c(Lorg/c/a/c/f;)V

    .line 837
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v1, v0}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;)V

    .line 839
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 843
    :pswitch_11
    iget-wide v2, p0, Lorg/c/a/b/q;->e:J

    iget-wide v4, p0, Lorg/c/a/b/q;->f:J

    sub-long/2addr v2, v4

    .line 844
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_42

    .line 846
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    :goto_18
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 847
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 848
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 846
    :cond_41
    const/4 v0, 0x7

    goto :goto_18

    .line 851
    :cond_42
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_43

    .line 855
    long-to-int v1, v2

    .line 858
    :cond_43
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v0

    .line 859
    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/c/a/b/q;->f:J

    .line 860
    iget-object v1, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v1, v0}, Lorg/c/a/c/z;->c(Lorg/c/a/c/f;)V

    .line 861
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v1, v0}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;)V

    .line 863
    iget-wide v0, p0, Lorg/c/a/b/q;->f:J

    iget-wide v2, p0, Lorg/c/a/b/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 865
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    :goto_19
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 866
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 869
    :cond_44
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 865
    :cond_45
    const/4 v0, 0x7

    goto :goto_19

    .line 874
    :pswitch_12
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    .line 875
    const/16 v1, 0xd

    if-eq v0, v1, :cond_46

    const/16 v1, 0xa

    if-ne v0, v1, :cond_47

    .line 876
    :cond_46
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    goto/16 :goto_17

    .line 877
    :cond_47
    const/16 v1, 0x20

    if-gt v0, v1, :cond_48

    .line 878
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    goto/16 :goto_17

    .line 881
    :cond_48
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/b/q;->g:I

    .line 882
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/b/q;->h:I

    .line 883
    const/4 v0, 0x4

    iput v0, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_17

    .line 890
    :pswitch_13
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    .line 891
    const/16 v1, 0xd

    if-eq v0, v1, :cond_49

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4d

    .line 893
    :cond_49
    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 895
    iget v0, p0, Lorg/c/a/b/q;->g:I

    if-nez v0, :cond_4c

    .line 897
    iget-byte v0, p0, Lorg/c/a/b/q;->c:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4a

    .line 898
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 899
    :cond_4a
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    :goto_1a
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 900
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 901
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 899
    :cond_4b
    const/4 v0, 0x7

    goto :goto_1a

    .line 904
    :cond_4c
    const/4 v0, 0x6

    iput v0, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_17

    .line 906
    :cond_4d
    const/16 v1, 0x20

    if-le v0, v1, :cond_4e

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4f

    .line 907
    :cond_4e
    const/4 v0, 0x5

    iput v0, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_17

    .line 908
    :cond_4f
    const/16 v1, 0x30

    if-lt v0, v1, :cond_50

    const/16 v1, 0x39

    if-gt v0, v1, :cond_50

    .line 909
    iget v1, p0, Lorg/c/a/b/q;->g:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/b/q;->g:I

    goto/16 :goto_17

    .line 910
    :cond_50
    const/16 v1, 0x61

    if-lt v0, v1, :cond_51

    const/16 v1, 0x66

    if-gt v0, v1, :cond_51

    .line 911
    iget v1, p0, Lorg/c/a/b/q;->g:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x61

    add-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/b/q;->g:I

    goto/16 :goto_17

    .line 912
    :cond_51
    const/16 v1, 0x41

    if-lt v0, v1, :cond_52

    const/16 v1, 0x46

    if-gt v0, v1, :cond_52

    .line 913
    iget v1, p0, Lorg/c/a/b/q;->g:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/b/q;->g:I

    goto/16 :goto_17

    .line 915
    :cond_52
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad chunk char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :pswitch_14
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    .line 922
    const/16 v1, 0xd

    if-eq v0, v1, :cond_53

    const/16 v1, 0xa

    if-ne v0, v1, :cond_40

    .line 924
    :cond_53
    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 925
    iget v0, p0, Lorg/c/a/b/q;->g:I

    if-nez v0, :cond_56

    .line 927
    iget-byte v0, p0, Lorg/c/a/b/q;->c:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_54

    .line 928
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 929
    :cond_54
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    :goto_1b
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 930
    iget-object v0, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/r;->a(J)V

    .line 931
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 929
    :cond_55
    const/4 v0, 0x7

    goto :goto_1b

    .line 934
    :cond_56
    const/4 v0, 0x6

    iput v0, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_17

    .line 941
    :pswitch_15
    iget v0, p0, Lorg/c/a/b/q;->g:I

    iget v4, p0, Lorg/c/a/b/q;->h:I

    sub-int/2addr v0, v4

    .line 942
    if-nez v0, :cond_57

    .line 944
    const/4 v0, 0x3

    iput v0, p0, Lorg/c/a/b/q;->b:I

    goto/16 :goto_17

    .line 947
    :cond_57
    if-le v1, v0, :cond_5a

    .line 949
    :goto_1c
    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v1, v0}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v0

    .line 950
    iget-wide v1, p0, Lorg/c/a/b/q;->f:J

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/c/a/b/q;->f:J

    .line 951
    iget v1, p0, Lorg/c/a/b/q;->h:I

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/b/q;->h:I

    .line 952
    iget-object v1, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v1, v0}, Lorg/c/a/c/z;->c(Lorg/c/a/c/f;)V

    .line 953
    iget-object v1, p0, Lorg/c/a/b/q;->j:Lorg/c/a/b/r;

    invoke-virtual {v1, v0}, Lorg/c/a/b/r;->a(Lorg/c/a/c/f;)V

    .line 955
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 961
    :pswitch_16
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_59

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 964
    iget-object v0, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 978
    :cond_58
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->e()V

    goto/16 :goto_17

    .line 969
    :cond_59
    :goto_1d
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-lez v0, :cond_58

    .line 970
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_59

    .line 972
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 973
    iget-object v0, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 974
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->e()V
    :try_end_5
    .catch Lorg/c/a/b/d; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1d

    :cond_5a
    move v0, v1

    goto :goto_1c

    :cond_5b
    move v3, v0

    goto/16 :goto_16

    :cond_5c
    move v4, v1

    move v5, v3

    goto/16 :goto_3

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 360
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 499
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x3a -> :sswitch_3
    .end sparse-switch

    .line 525
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    .line 627
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 561
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    .line 575
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_b
    .end sparse-switch

    .line 678
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_2
        0x3a -> :sswitch_d
    .end sparse-switch

    .line 709
    :sswitch_data_6
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_10
        0x3a -> :sswitch_f
    .end sparse-switch

    .line 737
    :sswitch_data_7
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 770
    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_13
    .end sparse-switch

    .line 831
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method protected g()I
    .locals 5

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lorg/c/a/b/q;->j()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1007
    :cond_0
    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1010
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 1050
    :goto_0
    return v0

    .line 1014
    :cond_1
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/c/a/b/q;->u:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/c/a/b/q;->e:J

    iget-wide v2, p0, Lorg/c/a/b/q;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->v()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    if-eqz v0, :cond_5

    .line 1016
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-nez v0, :cond_4

    .line 1017
    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    invoke-interface {v0}, Lorg/c/a/c/l;->f()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    .line 1018
    :cond_4
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1022
    :cond_5
    iget-object v0, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    if-eqz v0, :cond_b

    .line 1025
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/c/a/b/q;->b:I

    if-lez v0, :cond_7

    .line 1027
    :cond_6
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->f()V

    .line 1031
    :cond_7
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->s()I

    move-result v0

    if-nez v0, :cond_9

    .line 1033
    sget-object v0, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    const-string v1, "HttpParser Full for {} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->e()V

    .line 1035
    new-instance v1, Lorg/c/a/b/d;

    const/16 v2, 0x19d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FULL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v4, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-ne v0, v4, :cond_8

    const-string v0, "body"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/c/a/b/d;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "head"

    goto :goto_1

    .line 1040
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    iget-object v1, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/s;->a(Lorg/c/a/c/f;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    sget-object v1, Lorg/c/a/b/q;->i:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 1046
    instance-of v1, v0, Lorg/c/a/c/t;

    if-eqz v1, :cond_a

    :goto_2
    throw v0

    :cond_a
    new-instance v1, Lorg/c/a/c/t;

    invoke-direct {v1, v0}, Lorg/c/a/c/t;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 1050
    :cond_b
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public h()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1057
    iget-object v0, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    iget-object v2, p0, Lorg/c/a/b/q;->a:Lorg/c/a/c/z;

    invoke-virtual {v2}, Lorg/c/a/c/z;->q()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/c/a/c/z;->c(I)V

    .line 1058
    iget-boolean v0, p0, Lorg/c/a/b/q;->v:Z

    if-eqz v0, :cond_5

    const/16 v0, -0xe

    :goto_0
    iput v0, p0, Lorg/c/a/b/q;->b:I

    .line 1059
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/c/a/b/q;->e:J

    .line 1060
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/c/a/b/q;->f:J

    .line 1061
    iput v1, p0, Lorg/c/a/b/q;->d:I

    .line 1062
    iput v1, p0, Lorg/c/a/b/q;->t:I

    .line 1065
    iget-byte v0, p0, Lorg/c/a/b/q;->c:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->p()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->g()B

    move-result v0

    iput-byte v0, p0, Lorg/c/a/b/q;->c:B

    .line 1068
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_7

    .line 1074
    invoke-virtual {p0}, Lorg/c/a/b/q;->j()Lorg/c/a/c/f;

    .line 1080
    :goto_1
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->s()I

    move-result v0

    .line 1081
    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1082
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 1083
    :cond_1
    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    iget-object v2, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->h()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/c/a/c/f;->a(II)Lorg/c/a/c/f;

    .line 1084
    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    iget-object v2, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    iget-object v3, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    iget-object v4, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v4}, Lorg/c/a/c/f;->h()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/c/a/c/f;->a(II)Lorg/c/a/c/f;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/c/a/c/f;->f(I)I

    .line 1087
    :cond_2
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-eqz v0, :cond_3

    .line 1089
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0, v5}, Lorg/c/a/c/f;->d(I)V

    .line 1090
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->f()V

    .line 1092
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eqz v0, :cond_4

    .line 1093
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0, v5}, Lorg/c/a/c/f;->d(I)V

    .line 1095
    :cond_4
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1096
    invoke-virtual {p0}, Lorg/c/a/b/q;->i()V

    .line 1097
    return-void

    .line 1058
    :cond_5
    iget-object v0, p0, Lorg/c/a/b/q;->l:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1077
    :cond_7
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0, v5}, Lorg/c/a/c/f;->d(I)V

    .line 1078
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->f()V

    goto :goto_1
.end method

.method public i()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->o()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    if-ne v0, v1, :cond_0

    .line 1106
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1107
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    iget-object v1, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/l;->c(Lorg/c/a/c/f;)V

    .line 1109
    :cond_1
    iput-object v2, p0, Lorg/c/a/b/q;->n:Lorg/c/a/c/f;

    .line 1112
    :cond_2
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->o()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    if-eqz v0, :cond_4

    .line 1114
    iget-object v0, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-ne v0, v1, :cond_3

    .line 1115
    iput-object v2, p0, Lorg/c/a/b/q;->o:Lorg/c/a/c/f;

    .line 1116
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/l;->c(Lorg/c/a/c/f;)V

    .line 1117
    iput-object v2, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    .line 1119
    :cond_4
    return-void
.end method

.method public j()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lorg/c/a/b/q;->k:Lorg/c/a/c/l;

    invoke-interface {v0}, Lorg/c/a/c/l;->e()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    .line 1151
    iget-object v0, p0, Lorg/c/a/b/q;->q:Lorg/c/a/c/aa;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/c/aa;->c(Lorg/c/a/c/f;)V

    .line 1152
    iget-object v0, p0, Lorg/c/a/b/q;->r:Lorg/c/a/c/aa;

    iget-object v1, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/c/aa;->c(Lorg/c/a/c/f;)V

    .line 1154
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/q;->m:Lorg/c/a/c/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1138
    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/c/a/b/q;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/c/a/b/q;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/c/a/b/q;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
