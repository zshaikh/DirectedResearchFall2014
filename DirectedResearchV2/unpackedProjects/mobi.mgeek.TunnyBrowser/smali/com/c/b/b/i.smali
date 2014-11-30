.class public Lcom/c/b/b/i;
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
        "Lcom/c/b/b/i;",
        "Lcom/c/b/b/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/j;",
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
.field private g:Lcom/c/b/c/x;

.field private h:Lcom/c/b/a/f;

.field private i:Lcom/c/b/a/d;

.field private j:Lcom/c/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 20174
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "createTag_result"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/i;->b:Lorg/apache/c/b/j;

    .line 20176
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/i;->c:Lorg/apache/c/b/b;

    .line 20177
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/i;->d:Lorg/apache/c/b/b;

    .line 20178
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/i;->e:Lorg/apache/c/b/b;

    .line 20179
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "notFoundException"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/i;->f:Lorg/apache/c/b/b;

    .line 20257
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/j;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 20258
    sget-object v1, Lcom/c/b/b/j;->a:Lcom/c/b/b/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "success"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/x;

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20260
    sget-object v1, Lcom/c/b/b/j;->b:Lcom/c/b/b/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20262
    sget-object v1, Lcom/c/b/b/j;->c:Lcom/c/b/b/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20264
    sget-object v1, Lcom/c/b/b/j;->d:Lcom/c/b/b/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/i;->a:Ljava/util/Map;

    .line 20267
    const-class v0, Lcom/c/b/b/i;

    sget-object v1, Lcom/c/b/b/i;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 20268
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20271
    return-void
.end method

.method static synthetic c(Lcom/c/b/b/i;)Lcom/c/b/c/x;
    .locals 1

    .prologue
    .line 20173
    iget-object v0, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/b/i;)Lcom/c/b/a/f;
    .locals 1

    .prologue
    .line 20173
    iget-object v0, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/c/b/b/i;)Lcom/c/b/a/d;
    .locals 1

    .prologue
    .line 20173
    iget-object v0, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    return-object v0
.end method

.method static synthetic f(Lcom/c/b/b/i;)Lcom/c/b/a/b;
    .locals 1

    .prologue
    .line 20173
    iget-object v0, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 20589
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 20592
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 20593
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 20634
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 20635
    invoke-virtual {p0}, Lcom/c/b/b/i;->e()V

    .line 20636
    return-void

    .line 20596
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 20630
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 20632
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 20598
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_1

    .line 20599
    new-instance v0, Lcom/c/b/c/x;

    invoke-direct {v0}, Lcom/c/b/c/x;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    .line 20600
    iget-object v0, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    invoke-virtual {v0, p1}, Lcom/c/b/c/x;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 20602
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 20606
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_2

    .line 20607
    new-instance v0, Lcom/c/b/a/f;

    invoke-direct {v0}, Lcom/c/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    .line 20608
    iget-object v0, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    invoke-virtual {v0, p1}, Lcom/c/b/a/f;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 20610
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 20614
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_3

    .line 20615
    new-instance v0, Lcom/c/b/a/d;

    invoke-direct {v0}, Lcom/c/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    .line 20616
    iget-object v0, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    invoke-virtual {v0, p1}, Lcom/c/b/a/d;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 20618
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 20622
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v2, :cond_4

    .line 20623
    new-instance v0, Lcom/c/b/a/b;

    invoke-direct {v0}, Lcom/c/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    .line 20624
    iget-object v0, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    invoke-virtual {v0, p1}, Lcom/c/b/a/b;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 20626
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 20596
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
    .line 20329
    iget-object v0, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20490
    if-nez p1, :cond_1

    .line 20529
    :cond_0
    :goto_0
    return v0

    .line 20493
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/i;->a()Z

    move-result v1

    .line 20494
    invoke-virtual {p1}, Lcom/c/b/b/i;->a()Z

    move-result v2

    .line 20495
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 20496
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20498
    iget-object v1, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    iget-object v2, p1, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    invoke-virtual {v1, v2}, Lcom/c/b/c/x;->a(Lcom/c/b/c/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20502
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/i;->b()Z

    move-result v1

    .line 20503
    invoke-virtual {p1}, Lcom/c/b/b/i;->b()Z

    move-result v2

    .line 20504
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 20505
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20507
    iget-object v1, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    iget-object v2, p1, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    invoke-virtual {v1, v2}, Lcom/c/b/a/f;->a(Lcom/c/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20511
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/b/i;->c()Z

    move-result v1

    .line 20512
    invoke-virtual {p1}, Lcom/c/b/b/i;->c()Z

    move-result v2

    .line 20513
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 20514
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20516
    iget-object v1, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    iget-object v2, p1, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    invoke-virtual {v1, v2}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20520
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/b/i;->d()Z

    move-result v1

    .line 20521
    invoke-virtual {p1}, Lcom/c/b/b/i;->d()Z

    move-result v2

    .line 20522
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 20523
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20525
    iget-object v1, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    iget-object v2, p1, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    invoke-virtual {v1, v2}, Lcom/c/b/a/b;->a(Lcom/c/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20529
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/i;)I
    .locals 2

    .prologue
    .line 20537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20538
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

    .line 20580
    :cond_0
    :goto_0
    return v0

    .line 20544
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/i;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20545
    if-nez v0, :cond_0

    .line 20548
    invoke-virtual {p0}, Lcom/c/b/b/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    iget-object v1, p1, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20549
    if-nez v0, :cond_0

    .line 20553
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/i;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/i;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20554
    if-nez v0, :cond_0

    .line 20557
    invoke-virtual {p0}, Lcom/c/b/b/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    iget-object v1, p1, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20558
    if-nez v0, :cond_0

    .line 20562
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/i;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/i;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20563
    if-nez v0, :cond_0

    .line 20566
    invoke-virtual {p0}, Lcom/c/b/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    iget-object v1, p1, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20567
    if-nez v0, :cond_0

    .line 20571
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/b/i;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/i;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20572
    if-nez v0, :cond_0

    .line 20575
    invoke-virtual {p0}, Lcom/c/b/b/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    iget-object v1, p1, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20576
    if-nez v0, :cond_0

    .line 20580
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 20352
    iget-object v0, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

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
    .line 20375
    iget-object v0, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

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
    .line 20173
    check-cast p1, Lcom/c/b/b/i;

    invoke-virtual {p0, p1}, Lcom/c/b/b/i;->b(Lcom/c/b/b/i;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 20398
    iget-object v0, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

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
    .line 20703
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20482
    if-nez p1, :cond_1

    .line 20486
    :cond_0
    :goto_0
    return v0

    .line 20484
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/i;

    if-eqz v1, :cond_0

    .line 20485
    check-cast p1, Lcom/c/b/b/i;

    invoke-virtual {p0, p1}, Lcom/c/b/b/i;->a(Lcom/c/b/b/i;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20533
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTag_result("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20666
    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20667
    iget-object v1, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    if-nez v1, :cond_0

    .line 20668
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20673
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20674
    const-string v1, "userException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20675
    iget-object v1, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    if-nez v1, :cond_1

    .line 20676
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20681
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20682
    const-string v1, "systemException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20683
    iget-object v1, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    if-nez v1, :cond_2

    .line 20684
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20689
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20690
    const-string v1, "notFoundException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20691
    iget-object v1, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    if-nez v1, :cond_3

    .line 20692
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20697
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20670
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/i;->g:Lcom/c/b/c/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20678
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/i;->h:Lcom/c/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20686
    :cond_2
    iget-object v1, p0, Lcom/c/b/b/i;->i:Lcom/c/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20694
    :cond_3
    iget-object v1, p0, Lcom/c/b/b/i;->j:Lcom/c/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
