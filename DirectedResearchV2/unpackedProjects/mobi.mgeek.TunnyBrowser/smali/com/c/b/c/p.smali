.class public Lcom/c/b/c/p;
.super Ljava/lang/Object;
.source "Publishing.java"

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
        "Lcom/c/b/c/p;",
        "Lcom/c/b/c/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/q;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;

.field private static final f:Lorg/apache/c/b/b;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/c/b/c/k;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x2

    .line 66
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Publishing"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/p;->b:Lorg/apache/c/b/j;

    .line 73
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "uri"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/p;->c:Lorg/apache/c/b/b;

    .line 75
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "order"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/p;->d:Lorg/apache/c/b/b;

    .line 77
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "ascending"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/p;->e:Lorg/apache/c/b/b;

    .line 79
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "publicDescription"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/p;->f:Lorg/apache/c/b/b;

    .line 170
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/q;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 172
    sget-object v1, Lcom/c/b/c/q;->a:Lcom/c/b/c/q;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "uri"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/c/b/c/q;->b:Lcom/c/b/c/q;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "order"

    new-instance v4, Lorg/apache/c/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/c/b/c/k;

    invoke-direct {v4, v5, v6}, Lorg/apache/c/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/c/b/c/q;->c:Lcom/c/b/c/q;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "ascending"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/c/b/c/q;->d:Lcom/c/b/c/q;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "publicDescription"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/p;->a:Ljava/util/Map;

    .line 185
    const-class v0, Lcom/c/b/c/p;

    sget-object v1, Lcom/c/b/c/p;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/p;->k:[Z

    .line 189
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/c/b/c/p;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 653
    if-eqz p0, :cond_1

    .line 654
    new-instance v0, Lcom/c/b/c/p;

    invoke-direct {v0}, Lcom/c/b/c/p;-><init>()V

    .line 655
    const-string v2, "uri"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/p;->a(Ljava/lang/String;)V

    .line 656
    const-string v2, "order"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/c/b/c/k;->a(I)Lcom/c/b/c/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/p;->a(Lcom/c/b/c/k;)V

    .line 657
    const-string v2, "ascending"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 658
    const-string v2, "ascending"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/c/b/c/p;->a(Z)V

    .line 660
    :cond_0
    const-string v2, "publicDescription"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/b/c/p;->b(Ljava/lang/String;)V

    .line 664
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/c/b/c/k;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    .line 261
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 530
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 532
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 533
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 571
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 572
    invoke-virtual {p0}, Lcom/c/b/c/p;->e()V

    .line 573
    return-void

    .line 536
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 567
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 569
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 538
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_1

    .line 539
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    goto :goto_1

    .line 541
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 545
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 546
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    invoke-static {v0}, Lcom/c/b/c/k;->a(I)Lcom/c/b/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    goto :goto_1

    .line 548
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 552
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 553
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/p;->i:Z

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/p;->b(Z)V

    goto :goto_1

    .line 556
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 560
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_4

    .line 561
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    goto :goto_1

    .line 563
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/c/b/c/p;->i:Z

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/c/p;->b(Z)V

    .line 288
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/p;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 418
    if-nez p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/p;->a()Z

    move-result v1

    .line 422
    invoke-virtual {p1}, Lcom/c/b/c/p;->a()Z

    move-result v2

    .line 423
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 424
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/p;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/p;->b()Z

    move-result v1

    .line 431
    invoke-virtual {p1}, Lcom/c/b/c/p;->b()Z

    move-result v2

    .line 432
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 433
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 435
    iget-object v1, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    iget-object v2, p1, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    invoke-virtual {v1, v2}, Lcom/c/b/c/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/p;->c()Z

    move-result v1

    .line 440
    invoke-virtual {p1}, Lcom/c/b/c/p;->c()Z

    move-result v2

    .line 441
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 442
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 444
    iget-boolean v1, p0, Lcom/c/b/c/p;->i:Z

    iget-boolean v2, p1, Lcom/c/b/c/p;->i:Z

    if-ne v1, v2, :cond_0

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/p;->d()Z

    move-result v1

    .line 450
    invoke-virtual {p1}, Lcom/c/b/c/p;->d()Z

    move-result v2

    .line 452
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 453
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/p;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/c/p;)I
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
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

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/p;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/p;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/c/b/c/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/p;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 481
    if-nez v0, :cond_0

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/p;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/p;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 487
    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/c/b/c/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    iget-object v1, p1, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 493
    if-nez v0, :cond_0

    .line 497
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/p;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/p;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 499
    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/c/b/c/p;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    iget-boolean v0, p0, Lcom/c/b/c/p;->i:Z

    iget-boolean v1, p1, Lcom/c/b/c/p;->i:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 505
    if-nez v0, :cond_0

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/p;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/p;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 511
    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/c/b/c/p;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 515
    iget-object v0, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/p;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 517
    if-nez v0, :cond_0

    .line 521
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/c/b/c/p;->k:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 304
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/c/b/c/p;->k:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/c/b/c/p;

    invoke-virtual {p0, p1}, Lcom/c/b/c/p;->b(Lcom/c/b/c/p;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/p;

    if-eqz v1, :cond_0

    .line 413
    check-cast p1, Lcom/c/b/c/p;

    invoke-virtual {p0, p1}, Lcom/c/b/c/p;->a(Lcom/c/b/c/p;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/c/b/c/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "uri"

    iget-object v2, p0, Lcom/c/b/c/p;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    const-string v0, "order"

    iget-object v2, p0, Lcom/c/b/c/p;->h:Lcom/c/b/c/k;

    invoke-virtual {v2}, Lcom/c/b/c/k;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    const-string v0, "ascending"

    iget-boolean v2, p0, Lcom/c/b/c/p;->i:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    const-string v0, "publicDescription"

    iget-object v2, p0, Lcom/c/b/c/p;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
