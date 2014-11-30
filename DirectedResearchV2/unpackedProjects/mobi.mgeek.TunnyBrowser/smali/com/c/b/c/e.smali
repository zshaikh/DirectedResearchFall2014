.class public Lcom/c/b/c/e;
.super Ljava/lang/Object;
.source "LazyMap.java"

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
        "Lcom/c/b/c/e;",
        "Lcom/c/b/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/f;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;


# instance fields
.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v6, 0xe

    const/16 v9, 0xd

    const/16 v8, 0xb

    const/4 v7, 0x2

    .line 54
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "LazyMap"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/e;->b:Lorg/apache/c/b/j;

    .line 56
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "keysOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/e;->c:Lorg/apache/c/b/b;

    .line 57
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "fullMap"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/e;->d:Lorg/apache/c/b/b;

    .line 127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/f;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lcom/c/b/c/f;->a:Lcom/c/b/c/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "keysOnly"

    new-instance v4, Lorg/apache/c/a/f;

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/f;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/c/b/c/f;->b:Lcom/c/b/c/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "fullMap"

    new-instance v4, Lorg/apache/c/a/e;

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v8}, Lorg/apache/c/a/c;-><init>(B)V

    new-instance v6, Lorg/apache/c/a/c;

    invoke-direct {v6, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/c/a/e;-><init>(BLorg/apache/c/a/c;Lorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/e;->a:Ljava/util/Map;

    .line 136
    const-class v0, Lcom/c/b/c/e;

    sget-object v1, Lcom/c/b/c/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 374
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 375
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-nez v2, :cond_0

    .line 420
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 421
    invoke-virtual {p0}, Lcom/c/b/c/e;->c()V

    .line 422
    return-void

    .line 378
    :cond_0
    iget-short v2, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v2, :pswitch_data_0

    .line 416
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 418
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 380
    :pswitch_0
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    .line 382
    invoke-virtual {p1}, Lorg/apache/c/b/f;->r()Lorg/apache/c/b/i;

    move-result-object v2

    .line 383
    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lorg/apache/c/b/i;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    move v0, v1

    .line 384
    :goto_2
    iget v3, v2, Lorg/apache/c/b/i;->b:I

    if-ge v0, v3, :cond_1

    .line 387
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 390
    :cond_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->s()V

    goto :goto_1

    .line 393
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 397
    :pswitch_1
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 399
    invoke-virtual {p1}, Lorg/apache/c/b/f;->n()Lorg/apache/c/b/d;

    move-result-object v2

    .line 400
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/c/b/d;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    move v0, v1

    .line 401
    :goto_3
    iget v3, v2, Lorg/apache/c/b/d;->c:I

    if-ge v0, v3, :cond_3

    .line 405
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v4

    .line 407
    iget-object v5, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 409
    :cond_3
    invoke-virtual {p1}, Lorg/apache/c/b/f;->o()V

    goto :goto_1

    .line 412
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/e;->a()Z

    move-result v1

    .line 312
    invoke-virtual {p1}, Lcom/c/b/c/e;->a()Z

    move-result v2

    .line 313
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 314
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    iget-object v2, p1, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/e;->b()Z

    move-result v1

    .line 321
    invoke-virtual {p1}, Lcom/c/b/c/e;->b()Z

    move-result v2

    .line 322
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 323
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/c/e;)I
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
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

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 345
    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/c/b/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    iget-object v1, p1, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 349
    if-nez v0, :cond_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 354
    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/c/b/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 358
    if-nez v0, :cond_0

    .line 362
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 425
    invoke-virtual {p0}, Lcom/c/b/c/e;->c()V

    .line 427
    sget-object v0, Lcom/c/b/c/e;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 428
    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/c/b/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lcom/c/b/c/e;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 432
    new-instance v0, Lorg/apache/c/b/i;

    iget-object v1, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lorg/apache/c/b/i;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/i;)V

    .line 433
    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->h()V

    .line 439
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {p0}, Lcom/c/b/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    sget-object v0, Lcom/c/b/c/e;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 446
    new-instance v0, Lorg/apache/c/b/d;

    iget-object v1, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/c/b/d;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/d;)V

    .line 447
    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {p1}, Lorg/apache/c/b/f;->f()V

    .line 454
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 457
    :cond_3
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 458
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 459
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/c/b/c/e;

    invoke-virtual {p0, p1}, Lcom/c/b/c/e;->b(Lcom/c/b/c/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/e;

    if-eqz v1, :cond_0

    .line 303
    check-cast p1, Lcom/c/b/c/e;

    invoke-virtual {p0, p1}, Lcom/c/b/c/e;->a(Lcom/c/b/c/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LazyMap("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0}, Lcom/c/b/c/e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v0, "keysOnly:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 468
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :goto_0
    const/4 v0, 0x0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/e;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_1
    const-string v0, "fullMap:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 478
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/c/b/c/e;->e:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/c/b/c/e;->f:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
