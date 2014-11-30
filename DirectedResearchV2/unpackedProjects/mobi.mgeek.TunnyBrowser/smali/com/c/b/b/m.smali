.class public Lcom/c/b/b/m;
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
        "Lcom/c/b/b/m;",
        "Lcom/c/b/b/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/n;",
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
.field private f:Lcom/c/b/c/l;

.field private g:Lcom/c/b/a/f;

.field private h:Lcom/c/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 14191
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "getDefaultNotebook_result"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/m;->b:Lorg/apache/c/b/j;

    .line 14193
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/m;->c:Lorg/apache/c/b/b;

    .line 14194
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/m;->d:Lorg/apache/c/b/b;

    .line 14195
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/m;->e:Lorg/apache/c/b/b;

    .line 14269
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/n;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 14270
    sget-object v1, Lcom/c/b/b/n;->a:Lcom/c/b/b/n;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "success"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/l;

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14272
    sget-object v1, Lcom/c/b/b/n;->b:Lcom/c/b/b/n;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14274
    sget-object v1, Lcom/c/b/b/n;->c:Lcom/c/b/b/n;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14276
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/m;->a:Ljava/util/Map;

    .line 14277
    const-class v0, Lcom/c/b/b/m;

    sget-object v1, Lcom/c/b/b/m;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 14278
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14281
    return-void
.end method

.method static synthetic c(Lcom/c/b/b/m;)Lcom/c/b/c/l;
    .locals 1

    .prologue
    .line 14190
    iget-object v0, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/b/m;)Lcom/c/b/a/f;
    .locals 1

    .prologue
    .line 14190
    iget-object v0, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/c/b/b/m;)Lcom/c/b/a/d;
    .locals 1

    .prologue
    .line 14190
    iget-object v0, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 14539
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 14542
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 14543
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 14576
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 14577
    invoke-virtual {p0}, Lcom/c/b/b/m;->d()V

    .line 14578
    return-void

    .line 14546
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 14572
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 14574
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 14548
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_1

    .line 14549
    new-instance v0, Lcom/c/b/c/l;

    invoke-direct {v0}, Lcom/c/b/c/l;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    .line 14550
    iget-object v0, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    invoke-virtual {v0, p1}, Lcom/c/b/c/l;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 14552
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 14556
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_2

    .line 14557
    new-instance v0, Lcom/c/b/a/f;

    invoke-direct {v0}, Lcom/c/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    .line 14558
    iget-object v0, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, p1}, Lcom/c/b/a/f;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 14560
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 14564
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_3

    .line 14565
    new-instance v0, Lcom/c/b/a/d;

    invoke-direct {v0}, Lcom/c/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    .line 14566
    iget-object v0, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, p1}, Lcom/c/b/a/d;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 14568
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 14546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 14333
    iget-object v0, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/m;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14458
    if-nez p1, :cond_1

    .line 14488
    :cond_0
    :goto_0
    return v0

    .line 14461
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/m;->a()Z

    move-result v1

    .line 14462
    invoke-virtual {p1}, Lcom/c/b/b/m;->a()Z

    move-result v2

    .line 14463
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 14464
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 14466
    iget-object v1, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    iget-object v2, p1, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    invoke-virtual {v1, v2}, Lcom/c/b/c/l;->a(Lcom/c/b/c/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14470
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/m;->b()Z

    move-result v1

    .line 14471
    invoke-virtual {p1}, Lcom/c/b/b/m;->b()Z

    move-result v2

    .line 14472
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 14473
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 14475
    iget-object v1, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    iget-object v2, p1, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    invoke-virtual {v1, v2}, Lcom/c/b/a/f;->a(Lcom/c/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14479
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/b/m;->c()Z

    move-result v1

    .line 14480
    invoke-virtual {p1}, Lcom/c/b/b/m;->c()Z

    move-result v2

    .line 14481
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 14482
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 14484
    iget-object v1, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    iget-object v2, p1, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    invoke-virtual {v1, v2}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14488
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/m;)I
    .locals 2

    .prologue
    .line 14496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14497
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

    .line 14530
    :cond_0
    :goto_0
    return v0

    .line 14503
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/m;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/m;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14504
    if-nez v0, :cond_0

    .line 14507
    invoke-virtual {p0}, Lcom/c/b/b/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    iget-object v1, p1, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 14508
    if-nez v0, :cond_0

    .line 14512
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/m;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/m;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14513
    if-nez v0, :cond_0

    .line 14516
    invoke-virtual {p0}, Lcom/c/b/b/m;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    iget-object v1, p1, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 14517
    if-nez v0, :cond_0

    .line 14521
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/m;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/m;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14522
    if-nez v0, :cond_0

    .line 14525
    invoke-virtual {p0}, Lcom/c/b/b/m;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    iget-object v1, p1, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 14526
    if-nez v0, :cond_0

    .line 14530
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 14356
    iget-object v0, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

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
    .line 14379
    iget-object v0, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

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
    .line 14190
    check-cast p1, Lcom/c/b/b/m;

    invoke-virtual {p0, p1}, Lcom/c/b/b/m;->b(Lcom/c/b/b/m;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 14633
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14450
    if-nez p1, :cond_1

    .line 14454
    :cond_0
    :goto_0
    return v0

    .line 14452
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/m;

    if-eqz v1, :cond_0

    .line 14453
    check-cast p1, Lcom/c/b/b/m;

    invoke-virtual {p0, p1}, Lcom/c/b/b/m;->a(Lcom/c/b/b/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 14492
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDefaultNotebook_result("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14604
    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14605
    iget-object v1, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    if-nez v1, :cond_0

    .line 14606
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14611
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14612
    const-string v1, "userException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14613
    iget-object v1, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    if-nez v1, :cond_1

    .line 14614
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14619
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14620
    const-string v1, "systemException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14621
    iget-object v1, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    if-nez v1, :cond_2

    .line 14622
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14627
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14608
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/m;->f:Lcom/c/b/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14616
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/m;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14624
    :cond_2
    iget-object v1, p0, Lcom/c/b/b/m;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
