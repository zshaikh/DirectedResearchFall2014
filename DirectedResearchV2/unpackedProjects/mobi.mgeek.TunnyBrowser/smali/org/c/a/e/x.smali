.class Lorg/c/a/e/x;
.super Ljava/lang/Object;
.source "WebSocketConnectionRFC6455.java"

# interfaces
.implements Lorg/c/a/e/ab;


# instance fields
.field final synthetic a:Lorg/c/a/e/u;

.field private final b:Lorg/c/a/d/u;

.field private c:Lorg/c/a/c/o;

.field private d:B


# direct methods
.method private constructor <init>(Lorg/c/a/e/u;)V
    .locals 2

    .prologue
    .line 648
    iput-object p1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Lorg/c/a/d/u;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/c/a/d/u;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    .line 653
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/c/a/e/x;->d:B

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/e/u;Lorg/c/a/e/v;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lorg/c/a/e/x;-><init>(Lorg/c/a/e/u;)V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 931
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "Text message too large > {} chars for {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v4

    invoke-interface {v4}, Lorg/c/a/e/f;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->z(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    const/16 v1, 0x3f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v3}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v3

    invoke-interface {v3}, Lorg/c/a/e/f;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/c/a/e/f;->a(ILjava/lang/String;)V

    .line 934
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/c/a/e/x;->d:B

    .line 935
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->b()V

    .line 936
    return-void
.end method

.method private a(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 916
    iget-object v2, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v2}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/e/f;->c()I

    move-result v2

    .line 917
    if-lez v2, :cond_1

    add-int v3, p1, p2

    if-le v3, v2, :cond_1

    .line 919
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v2

    const-string v3, "Binary message too large > {}B for {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v5}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v5

    invoke-interface {v5}, Lorg/c/a/e/f;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v5}, Lorg/c/a/e/u;->y(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v1}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v1

    const/16 v2, 0x3f1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message size > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v4

    invoke-interface {v4}, Lorg/c/a/e/f;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/c/a/e/f;->a(ILjava/lang/String;)V

    .line 921
    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/c/a/e/x;->d:B

    .line 922
    iget-object v1, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v1}, Lorg/c/a/c/o;->e()V

    .line 926
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 900
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/c/a/e/f;->a(ILjava/lang/String;)V

    .line 905
    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->x(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 909
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(BBLorg/c/a/c/f;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 657
    invoke-static {p1}, Lorg/c/a/e/u;->a(B)Z

    move-result v6

    .line 659
    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->n(Lorg/c/a/e/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    monitor-exit v1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :try_start_1
    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v3

    .line 669
    invoke-static {p2}, Lorg/c/a/e/u;->b(B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v0

    const/16 v1, 0x7d

    if-le v0, v1, :cond_2

    .line 671
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Control frame too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/c/a/d/t; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    const-string v2, "NOTUTF8 - {} for {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->v(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 888
    const/16 v0, 0x3ef

    const-string v1, "Invalid UTF-8"

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 676
    :cond_2
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3

    .line 678
    const/16 v0, 0x3ea

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSV bits set 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/c/a/d/t; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 890
    :catch_1
    move-exception v0

    .line 892
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    const-string v2, "{} for {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->w(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 894
    const/16 v1, 0x3f3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Server Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->b(Lorg/c/a/e/u;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->b(Lorg/c/a/e/u;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_4

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 689
    :cond_4
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->o(Lorg/c/a/e/u;)Lorg/c/a/e/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 691
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->o(Lorg/c/a/e/u;)Lorg/c/a/e/i;

    move-result-object v0

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v4

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v5

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/c/a/e/i;->a(BB[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :cond_5
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->p(Lorg/c/a/e/u;)Lorg/c/a/e/h;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lorg/c/a/e/u;->b(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 697
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->p(Lorg/c/a/e/u;)Lorg/c/a/e/h;

    move-result-object v0

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v1

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-interface {v0, p2, v3, v1, v2}, Lorg/c/a/e/h;->a(B[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 880
    :pswitch_0
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 705
    :pswitch_1
    iget-byte v0, p0, Lorg/c/a/e/x;->d:B

    if-ne v0, v9, :cond_7

    .line 707
    const/16 v0, 0x3ea

    const-string v1, "Bad Continuation"

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :cond_7
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->q(Lorg/c/a/e/u;)Lorg/c/a/e/j;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-byte v0, p0, Lorg/c/a/e/x;->d:B

    if-ne v0, v7, :cond_8

    .line 714
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v2

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v4

    invoke-interface {v4}, Lorg/c/a/e/f;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/c/a/d/u;->a([BIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 717
    if-eqz v6, :cond_8

    .line 719
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/c/a/e/x;->d:B

    .line 720
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v1}, Lorg/c/a/d/u;->b()V

    .line 722
    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v1}, Lorg/c/a/e/u;->q(Lorg/c/a/e/u;)Lorg/c/a/e/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/e/j;->a(Ljava/lang/String;)V

    .line 729
    :cond_8
    :goto_1
    iget-byte v0, p0, Lorg/c/a/e/x;->d:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/e/f;->c()I

    move-result v0

    if-ltz v0, :cond_0

    .line 731
    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v0}, Lorg/c/a/c/o;->m()I

    move-result v0

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v0, p3}, Lorg/c/a/c/o;->b(Lorg/c/a/c/f;)I

    .line 736
    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->s(Lorg/c/a/e/u;)Lorg/c/a/e/g;
    :try_end_4
    .catch Lorg/c/a/d/t; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    :try_start_5
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->s(Lorg/c/a/e/u;)Lorg/c/a/e/g;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v1}, Lorg/c/a/c/o;->u()[B

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v2}, Lorg/c/a/c/o;->h()I

    move-result v2

    iget-object v3, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v3}, Lorg/c/a/c/o;->m()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/c/a/e/g;->a([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 744
    const/4 v0, -0x1

    :try_start_6
    iput-byte v0, p0, Lorg/c/a/e/x;->d:B

    .line 745
    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v0}, Lorg/c/a/c/o;->e()V

    goto/16 :goto_0

    .line 726
    :cond_9
    invoke-direct {p0}, Lorg/c/a/e/x;->a()V

    goto :goto_1

    .line 744
    :catchall_1
    move-exception v0

    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/c/a/e/x;->d:B

    .line 745
    iget-object v1, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v1}, Lorg/c/a/c/o;->e()V

    throw v0

    .line 754
    :pswitch_2
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "PING {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->a(Lorg/c/a/e/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v3

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/c/a/e/f;->a(B[BII)V

    goto/16 :goto_0

    .line 764
    :pswitch_3
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "PONG {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 770
    :pswitch_4
    const/16 v1, 0x3ed

    .line 771
    const/4 v0, 0x0

    .line 772
    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    if-lt v2, v10, :cond_e

    .line 774
    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 777
    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_b

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3f3

    if-le v1, v2, :cond_a

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_b

    :cond_a
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_c

    .line 784
    :cond_b
    const/16 v0, 0x3ea

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 788
    :cond_c
    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    if-le v2, v10, :cond_d

    .line 790
    iget-object v2, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v3

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    iget-object v6, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v6}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v6

    invoke-interface {v6}, Lorg/c/a/e/f;->b()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/c/a/d/u;->a([BIII)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 792
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    iget-object v2, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v2}, Lorg/c/a/d/u;->b()V

    .line 803
    :cond_d
    iget-object v2, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-virtual {v2, v1, v0}, Lorg/c/a/e/u;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 797
    :cond_e
    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 800
    const/16 v0, 0x3ea

    const-string v1, "Invalid payload length of 1"

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :pswitch_5
    iget-byte v0, p0, Lorg/c/a/e/x;->d:B

    if-eq v0, v9, :cond_f

    .line 811
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Continuation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :cond_f
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->q(Lorg/c/a/e/u;)Lorg/c/a/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/e/f;->b()I

    move-result v0

    if-gtz v0, :cond_11

    .line 820
    if-eqz v6, :cond_10

    .line 821
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->q(Lorg/c/a/e/u;)Lorg/c/a/e/j;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Lorg/c/a/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/c/a/e/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    :cond_10
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "Frame discarded. Text aggregation disabled for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->t(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    const/16 v0, 0x3f0

    const-string v1, "Text frame aggregation disabled"

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :cond_11
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-interface {p3}, Lorg/c/a/c/f;->u()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v2

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v3

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v4

    invoke-interface {v4}, Lorg/c/a/e/f;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/c/a/d/u;->a([BIII)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 831
    if-eqz v6, :cond_12

    .line 833
    iget-object v0, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lorg/c/a/e/x;->b:Lorg/c/a/d/u;

    invoke-virtual {v1}, Lorg/c/a/d/u;->b()V

    .line 835
    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v1}, Lorg/c/a/e/u;->q(Lorg/c/a/e/u;)Lorg/c/a/e/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/c/a/e/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_12
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/c/a/e/x;->d:B

    goto/16 :goto_0

    .line 843
    :cond_13
    invoke-direct {p0}, Lorg/c/a/e/x;->a()V

    goto/16 :goto_0

    .line 850
    :pswitch_6
    iget-byte v0, p0, Lorg/c/a/e/x;->d:B

    if-eq v0, v9, :cond_14

    .line 852
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Continuation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_14
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->s(Lorg/c/a/e/u;)Lorg/c/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    if-eqz v6, :cond_15

    .line 860
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->s(Lorg/c/a/e/u;)Lorg/c/a/e/g;

    move-result-object v0

    invoke-interface {p3}, Lorg/c/a/c/f;->h()I

    move-result v1

    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-interface {v0, v3, v1, v2}, Lorg/c/a/e/g;->a([BII)V

    goto/16 :goto_0

    .line 862
    :cond_15
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/e/f;->c()I

    move-result v0

    if-ltz v0, :cond_17

    .line 864
    iput-byte p2, p0, Lorg/c/a/e/x;->d:B

    .line 866
    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    if-nez v0, :cond_16

    .line 867
    new-instance v0, Lorg/c/a/c/o;

    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v1}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/e/f;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    .line 868
    :cond_16
    iget-object v0, p0, Lorg/c/a/e/x;->c:Lorg/c/a/c/o;

    invoke-virtual {v0, p3}, Lorg/c/a/c/o;->b(Lorg/c/a/c/f;)I

    goto/16 :goto_0

    .line 872
    :cond_17
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "Frame discarded. Binary aggregation disabed for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v4}, Lorg/c/a/e/u;->u(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    const/16 v0, 0x3f0

    const-string v1, "Binary frame aggregation disabled"

    invoke-direct {p0, v0, v1}, Lorg/c/a/e/x;->b(ILjava/lang/String;)V
    :try_end_6
    .catch Lorg/c/a/d/t; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 940
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 941
    invoke-static {}, Lorg/c/a/e/u;->d()Lorg/c/a/d/c/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->r(Lorg/c/a/e/u;)Lorg/c/a/e/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/c/a/e/f;->a(ILjava/lang/String;)V

    .line 943
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/e/x;->a:Lorg/c/a/e/u;

    invoke-virtual {v1}, Lorg/c/a/e/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
