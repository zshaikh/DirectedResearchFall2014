.class public Lcom/c/b/b/e;
.super Ljava/lang/Object;
.source "NoteStore.java"

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
        "Lcom/c/b/b/e;",
        "Lcom/c/b/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/f;",
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
.field private g:Lcom/c/b/c/g;

.field private h:Lcom/c/b/a/f;

.field private i:Lcom/c/b/a/d;

.field private j:Lcom/c/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 40992
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "createNote_result"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/e;->b:Lorg/apache/c/b/j;

    .line 40994
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/e;->c:Lorg/apache/c/b/b;

    .line 40995
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/e;->d:Lorg/apache/c/b/b;

    .line 40996
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/e;->e:Lorg/apache/c/b/b;

    .line 40997
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "notFoundException"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/e;->f:Lorg/apache/c/b/b;

    .line 41075
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/f;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 41076
    sget-object v1, Lcom/c/b/b/f;->a:Lcom/c/b/b/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "success"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/g;

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41078
    sget-object v1, Lcom/c/b/b/f;->b:Lcom/c/b/b/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41080
    sget-object v1, Lcom/c/b/b/f;->c:Lcom/c/b/b/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41082
    sget-object v1, Lcom/c/b/b/f;->d:Lcom/c/b/b/f;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41084
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/e;->a:Ljava/util/Map;

    .line 41085
    const-class v0, Lcom/c/b/b/e;

    sget-object v1, Lcom/c/b/b/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 41086
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41089
    return-void
.end method

.method static synthetic c(Lcom/c/b/b/e;)Lcom/c/b/c/g;
    .locals 1

    .prologue
    .line 40991
    iget-object v0, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/b/e;)Lcom/c/b/a/f;
    .locals 1

    .prologue
    .line 40991
    iget-object v0, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/c/b/b/e;)Lcom/c/b/a/d;
    .locals 1

    .prologue
    .line 40991
    iget-object v0, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    return-object v0
.end method

.method static synthetic f(Lcom/c/b/b/e;)Lcom/c/b/a/b;
    .locals 1

    .prologue
    .line 40991
    iget-object v0, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 41407
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 41410
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 41411
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 41452
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 41453
    invoke-virtual {p0}, Lcom/c/b/b/e;->e()V

    .line 41454
    return-void

    .line 41414
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 41448
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 41450
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 41416
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_1

    .line 41417
    new-instance v0, Lcom/c/b/c/g;

    invoke-direct {v0}, Lcom/c/b/c/g;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    .line 41418
    iget-object v0, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    invoke-virtual {v0, p1}, Lcom/c/b/c/g;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 41420
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 41424
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_2

    .line 41425
    new-instance v0, Lcom/c/b/a/f;

    invoke-direct {v0}, Lcom/c/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    .line 41426
    iget-object v0, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    invoke-virtual {v0, p1}, Lcom/c/b/a/f;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 41428
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 41432
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_3

    .line 41433
    new-instance v0, Lcom/c/b/a/d;

    invoke-direct {v0}, Lcom/c/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    .line 41434
    iget-object v0, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    invoke-virtual {v0, p1}, Lcom/c/b/a/d;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 41436
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 41440
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_4

    .line 41441
    new-instance v0, Lcom/c/b/a/b;

    invoke-direct {v0}, Lcom/c/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    .line 41442
    iget-object v0, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    invoke-virtual {v0, p1}, Lcom/c/b/a/b;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 41444
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 41414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41147
    iget-object v0, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41308
    if-nez p1, :cond_1

    .line 41347
    :cond_0
    :goto_0
    return v0

    .line 41311
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/e;->a()Z

    move-result v1

    .line 41312
    invoke-virtual {p1}, Lcom/c/b/b/e;->a()Z

    move-result v2

    .line 41313
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 41314
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 41316
    iget-object v1, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    iget-object v2, p1, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    invoke-virtual {v1, v2}, Lcom/c/b/c/g;->a(Lcom/c/b/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41320
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/e;->b()Z

    move-result v1

    .line 41321
    invoke-virtual {p1}, Lcom/c/b/b/e;->b()Z

    move-result v2

    .line 41322
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 41323
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 41325
    iget-object v1, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    iget-object v2, p1, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    invoke-virtual {v1, v2}, Lcom/c/b/a/f;->a(Lcom/c/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41329
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/b/e;->c()Z

    move-result v1

    .line 41330
    invoke-virtual {p1}, Lcom/c/b/b/e;->c()Z

    move-result v2

    .line 41331
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 41332
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 41334
    iget-object v1, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    iget-object v2, p1, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    invoke-virtual {v1, v2}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41338
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/b/e;->d()Z

    move-result v1

    .line 41339
    invoke-virtual {p1}, Lcom/c/b/b/e;->d()Z

    move-result v2

    .line 41340
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 41341
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 41343
    iget-object v1, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    iget-object v2, p1, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    invoke-virtual {v1, v2}, Lcom/c/b/a/b;->a(Lcom/c/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41347
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/e;)I
    .locals 2

    .prologue
    .line 41355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41356
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

    .line 41398
    :cond_0
    :goto_0
    return v0

    .line 41362
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 41363
    if-nez v0, :cond_0

    .line 41366
    invoke-virtual {p0}, Lcom/c/b/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    iget-object v1, p1, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 41367
    if-nez v0, :cond_0

    .line 41371
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 41372
    if-nez v0, :cond_0

    .line 41375
    invoke-virtual {p0}, Lcom/c/b/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    iget-object v1, p1, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 41376
    if-nez v0, :cond_0

    .line 41380
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/e;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 41381
    if-nez v0, :cond_0

    .line 41384
    invoke-virtual {p0}, Lcom/c/b/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    iget-object v1, p1, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 41385
    if-nez v0, :cond_0

    .line 41389
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/b/e;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/e;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 41390
    if-nez v0, :cond_0

    .line 41393
    invoke-virtual {p0}, Lcom/c/b/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    iget-object v1, p1, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 41394
    if-nez v0, :cond_0

    .line 41398
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41170
    iget-object v0, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 41193
    iget-object v0, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

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
    .line 40991
    check-cast p1, Lcom/c/b/b/e;

    invoke-virtual {p0, p1}, Lcom/c/b/b/e;->b(Lcom/c/b/b/e;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 41216
    iget-object v0, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

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
    .line 41521
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41300
    if-nez p1, :cond_1

    .line 41304
    :cond_0
    :goto_0
    return v0

    .line 41302
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/e;

    if-eqz v1, :cond_0

    .line 41303
    check-cast p1, Lcom/c/b/b/e;

    invoke-virtual {p0, p1}, Lcom/c/b/b/e;->a(Lcom/c/b/b/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41351
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNote_result("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41484
    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41485
    iget-object v1, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    if-nez v1, :cond_0

    .line 41486
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41491
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41492
    const-string v1, "userException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41493
    iget-object v1, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    if-nez v1, :cond_1

    .line 41494
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41499
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41500
    const-string v1, "systemException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41501
    iget-object v1, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    if-nez v1, :cond_2

    .line 41502
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41507
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41508
    const-string v1, "notFoundException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41509
    iget-object v1, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    if-nez v1, :cond_3

    .line 41510
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41515
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41488
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/e;->g:Lcom/c/b/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41496
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/e;->h:Lcom/c/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 41504
    :cond_2
    iget-object v1, p0, Lcom/c/b/b/e;->i:Lcom/c/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 41512
    :cond_3
    iget-object v1, p0, Lcom/c/b/b/e;->j:Lcom/c/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
