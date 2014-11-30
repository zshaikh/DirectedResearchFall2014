.class public Lcom/c/b/c/c;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/c/c;",
        "Lcom/c/b/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/d;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;


# instance fields
.field private f:[B

.field private g:I

.field private h:[B

.field private i:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0xb

    const/4 v5, 0x2

    .line 53
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/c;->b:Lorg/apache/c/b/j;

    .line 55
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "bodyHash"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/c;->c:Lorg/apache/c/b/b;

    .line 56
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "size"

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/c;->d:Lorg/apache/c/b/b;

    .line 57
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "body"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/c;->e:Lorg/apache/c/b/b;

    .line 133
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/d;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 134
    sget-object v1, Lcom/c/b/c/d;->a:Lcom/c/b/c/d;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "bodyHash"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/c/b/c/d;->b:Lcom/c/b/c/d;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "size"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/c/b/c/d;->c:Lcom/c/b/c/d;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "body"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/c;->a:Ljava/util/Map;

    .line 141
    const-class v0, Lcom/c/b/c/c;

    sget-object v1, Lcom/c/b/c/c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/c;->i:[Z

    .line 145
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 393
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 396
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 397
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 428
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 429
    invoke-virtual {p0}, Lcom/c/b/c/c;->d()V

    .line 430
    return-void

    .line 400
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 424
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 426
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 402
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_1

    .line 403
    invoke-virtual {p1}, Lorg/apache/c/b/f;->B()[B

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/c;->f:[B

    goto :goto_1

    .line 405
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 409
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 410
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/c;->g:I

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/c;->a(Z)V

    goto :goto_1

    .line 413
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 417
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_3

    .line 418
    invoke-virtual {p1}, Lorg/apache/c/b/f;->B()[B

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/c;->h:[B

    goto :goto_1

    .line 420
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/c/b/c/c;->i:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 217
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/c;->a()Z

    move-result v1

    .line 316
    invoke-virtual {p1}, Lcom/c/b/c/c;->a()Z

    move-result v2

    .line 317
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 318
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/c/b/c/c;->f:[B

    iget-object v2, p1, Lcom/c/b/c/c;->f:[B

    invoke-static {v1, v2}, Lorg/apache/c/c;->a([B[B)I

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/c;->b()Z

    move-result v1

    .line 325
    invoke-virtual {p1}, Lcom/c/b/c/c;->b()Z

    move-result v2

    .line 326
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 327
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 329
    iget v1, p0, Lcom/c/b/c/c;->g:I

    iget v2, p1, Lcom/c/b/c/c;->g:I

    if-ne v1, v2, :cond_0

    .line 333
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/c;->c()Z

    move-result v1

    .line 334
    invoke-virtual {p1}, Lcom/c/b/c/c;->c()Z

    move-result v2

    .line 335
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 336
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/c/b/c/c;->h:[B

    iget-object v2, p1, Lcom/c/b/c/c;->h:[B

    invoke-static {v1, v2}, Lorg/apache/c/c;->a([B[B)I

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/c/c;)I
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 358
    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/c/b/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    iget-object v1, p1, Lcom/c/b/c/c;->f:[B

    invoke-static {v0, v1}, Lorg/apache/c/c;->a([B[B)I

    move-result v0

    .line 362
    if-nez v0, :cond_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/c;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 367
    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/c/b/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/c/b/c/c;->g:I

    iget v1, p1, Lcom/c/b/c/c;->g:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 371
    if-nez v0, :cond_0

    .line 375
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/c;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/c;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 376
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/c/b/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    iget-object v1, p1, Lcom/c/b/c/c;->h:[B

    invoke-static {v0, v1}, Lorg/apache/c/c;->a([B[B)I

    move-result v0

    .line 380
    if-nez v0, :cond_0

    .line 384
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/c/b/c/c;->d()V

    .line 435
    sget-object v0, Lcom/c/b/c/c;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 436
    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/c/b/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/c/b/c/c;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 439
    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a([B)V

    .line 440
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    sget-object v0, Lcom/c/b/c/c;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 445
    iget v0, p0, Lcom/c/b/c/c;->g:I

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(I)V

    .line 446
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/c/b/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    sget-object v0, Lcom/c/b/c/c;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 451
    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a([B)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 455
    :cond_2
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 456
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 457
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/c/b/c/c;->i:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/c/b/c/c;

    invoke-virtual {p0, p1}, Lcom/c/b/c/c;->b(Lcom/c/b/c/c;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 304
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/c;

    if-eqz v1, :cond_0

    .line 307
    check-cast p1, Lcom/c/b/c/c;

    invoke-virtual {p0, p1}, Lcom/c/b/c/c;->a(Lcom/c/b/c/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Data("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0}, Lcom/c/b/c/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    const-string v0, "bodyHash:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    if-nez v0, :cond_4

    .line 466
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/c;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 473
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_1
    const-string v0, "size:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget v0, p0, Lcom/c/b/c/c;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    :goto_1
    invoke-virtual {p0}, Lcom/c/b/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_2
    const-string v0, "body:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    if-nez v0, :cond_5

    .line 482
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_3
    :goto_2
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/c/b/c/c;->f:[B

    invoke-static {v0, v2}, Lorg/apache/c/c;->a([BLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/c/b/c/c;->h:[B

    invoke-static {v0, v2}, Lorg/apache/c/c;->a([BLjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method
