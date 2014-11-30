.class public Lorg/c/a/a/t;
.super Ljava/lang/Object;
.source "HttpExchange.java"


# static fields
.field static final b:Lorg/c/a/d/c/d;

.field static final synthetic f:Z


# instance fields
.field private a:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field private g:Lorg/c/a/c/f;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lorg/c/a/a/f;

.field private final k:Lorg/c/a/b/e;

.field private l:Lorg/c/a/c/f;

.field private m:Ljava/io/InputStream;

.field private n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:Z

.field private p:Z

.field private q:Lorg/c/a/a/r;

.field private volatile r:Lorg/c/a/a/a;

.field private s:Lorg/c/a/a/f;

.field private t:J

.field private volatile u:Lorg/c/a/d/g/f;

.field private v:J

.field private w:J

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/c/a/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/t;->f:Z

    .line 79
    const-class v0, Lorg/c/a/a/t;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "GET"

    iput-object v0, p0, Lorg/c/a/a/t;->a:Ljava/lang/String;

    .line 96
    sget-object v0, Lorg/c/a/b/s;->a:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/a/t;->g:Lorg/c/a/c/f;

    .line 98
    const/16 v0, 0xb

    iput v0, p0, Lorg/c/a/a/t;->i:I

    .line 100
    new-instance v0, Lorg/c/a/b/e;

    invoke-direct {v0}, Lorg/c/a/b/e;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/t;->k:Lorg/c/a/b/e;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    iput-boolean v1, p0, Lorg/c/a/a/t;->o:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/t;->p:Z

    .line 108
    new-instance v0, Lorg/c/a/a/v;

    invoke-direct {v0, p0, v3}, Lorg/c/a/a/v;-><init>(Lorg/c/a/a/t;Lorg/c/a/a/u;)V

    iput-object v0, p0, Lorg/c/a/a/t;->q:Lorg/c/a/a/r;

    .line 111
    iput-object v3, p0, Lorg/c/a/a/t;->s:Lorg/c/a/a/f;

    .line 114
    iput-wide v4, p0, Lorg/c/a/a/t;->t:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/c/a/a/t;->v:J

    .line 117
    iput-wide v4, p0, Lorg/c/a/a/t;->w:J

    .line 118
    iput v2, p0, Lorg/c/a/a/t;->x:I

    .line 119
    iput v2, p0, Lorg/c/a/a/t;->y:I

    .line 1223
    return-void
.end method

.method static synthetic a(Lorg/c/a/a/t;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/c/a/a/t;->d()V

    return-void
.end method

.method private a(II)Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/r;->e()V

    .line 384
    :cond_0
    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    packed-switch p0, :pswitch_data_0

    .line 881
    const-string v0, "UNKNOWN"

    .line 883
    :goto_0
    return-object v0

    .line 845
    :pswitch_0
    const-string v0, "START"

    goto :goto_0

    .line 848
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 851
    :pswitch_2
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 854
    :pswitch_3
    const-string v0, "SENDING"

    goto :goto_0

    .line 857
    :pswitch_4
    const-string v0, "WAITING"

    goto :goto_0

    .line 860
    :pswitch_5
    const-string v0, "HEADERS"

    goto :goto_0

    .line 863
    :pswitch_6
    const-string v0, "CONTENT"

    goto :goto_0

    .line 866
    :pswitch_7
    const-string v0, "COMPLETED"

    goto :goto_0

    .line 869
    :pswitch_8
    const-string v0, "EXPIRED"

    goto :goto_0

    .line 872
    :pswitch_9
    const-string v0, "EXCEPTED"

    goto :goto_0

    .line 875
    :pswitch_a
    const-string v0, "CANCELLING"

    goto :goto_0

    .line 878
    :pswitch_b
    const-string v0, "CANCELLED"

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private d()V
    .locals 1

    .prologue
    .line 785
    monitor-enter p0

    .line 787
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/a/t;->v()Lorg/c/a/a/a;

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/t;->e:Z

    .line 789
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 790
    monitor-exit p0

    .line 791
    return-void

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lorg/c/a/a/t;->r:Lorg/c/a/a/a;

    .line 796
    if-eqz v0, :cond_0

    .line 802
    :try_start_0
    invoke-virtual {v0}, Lorg/c/a/a/a;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {p0}, Lorg/c/a/a/t;->v()Lorg/c/a/a/a;

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 806
    :try_start_1
    sget-object v1, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    invoke-virtual {p0}, Lorg/c/a/a/t;->v()Lorg/c/a/a/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/c/a/a/t;->v()Lorg/c/a/a/a;

    throw v0
.end method


# virtual methods
.method protected a(Lorg/c/a/c/s;)Lorg/c/a/c/r;
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 915
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 416
    iput-wide p1, p0, Lorg/c/a/a/t;->t:J

    .line 417
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 712
    iput-object p1, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    .line 713
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 715
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 430
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->a(Ljava/net/URI;)V

    .line 431
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lorg/c/a/a/t;->r()Lorg/c/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/c/a/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 998
    sget-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECTION FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 999
    return-void
.end method

.method public a(Ljava/net/URI;)V
    .locals 5

    .prologue
    .line 606
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!Absolute URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opaque URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    sget-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    sget-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    const-string v1, "URI = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 617
    if-gtz v0, :cond_3

    .line 618
    const-string v0, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1bb

    .line 620
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/c/a/a/t;->b(Ljava/lang/String;)V

    .line 621
    new-instance v1, Lorg/c/a/a/f;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/c/a/a/f;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/f;)V

    .line 623
    new-instance v0, Lorg/c/a/b/w;

    invoke-direct {v0, p1}, Lorg/c/a/b/w;-><init>(Ljava/net/URI;)V

    .line 624
    invoke-virtual {v0}, Lorg/c/a/b/w;->a()Ljava/lang/String;

    move-result-object v0

    .line 625
    if-nez v0, :cond_4

    const-string v0, "/"

    :cond_4
    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->d(Ljava/lang/String;)V

    .line 626
    return-void

    .line 618
    :cond_5
    const/16 v0, 0x50

    goto :goto_0
.end method

.method a(Lorg/c/a/a/a;)V
    .locals 3

    .prologue
    .line 817
    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Lorg/c/a/a/f;

    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/c/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/c/s;->m()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/c/a/a/f;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/c/a/a/t;->s:Lorg/c/a/a/f;

    .line 820
    :cond_0
    iput-object p1, p0, Lorg/c/a/a/t;->r:Lorg/c/a/a/a;

    .line 821
    invoke-virtual {p0}, Lorg/c/a/a/t;->g()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 822
    invoke-direct {p0}, Lorg/c/a/a/t;->e()V

    .line 823
    :cond_1
    return-void
.end method

.method public a(Lorg/c/a/a/f;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lorg/c/a/a/t;->j:Lorg/c/a/a/f;

    .line 440
    return-void
.end method

.method protected a(Lorg/c/a/a/k;)V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p1, v0}, Lorg/c/a/a/k;->c(Lorg/c/a/d/g/f;)V

    .line 1086
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    .line 1087
    return-void
.end method

.method protected a(Lorg/c/a/a/o;)V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/c/a/a/t;->g()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->a(I)Z

    .line 129
    :cond_0
    invoke-virtual {p1, p0}, Lorg/c/a/a/o;->d(Lorg/c/a/a/t;)V

    .line 130
    iget-object v0, p0, Lorg/c/a/a/t;->r:Lorg/c/a/a/a;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p0}, Lorg/c/a/a/a;->b(Lorg/c/a/a/t;)V

    .line 133
    :cond_1
    return-void
.end method

.method public a(Lorg/c/a/a/r;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lorg/c/a/a/t;->q:Lorg/c/a/a/r;

    .line 412
    return-void
.end method

.method protected a(Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method protected a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method protected a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 955
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 768
    iput-boolean p1, p0, Lorg/c/a/a/t;->o:Z

    .line 769
    return-void
.end method

.method a(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 195
    .line 198
    :try_start_0
    iget-object v2, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 200
    if-eq v3, p1, :cond_0

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 203
    iget-wide v6, p0, Lorg/c/a/a/t;->v:J

    sub-long v6, v4, v6

    long-to-int v2, v6

    iput v2, p0, Lorg/c/a/a/t;->y:I

    .line 204
    iput v3, p0, Lorg/c/a/a/t;->x:I

    .line 205
    iput-wide v4, p0, Lorg/c/a/a/t;->v:J

    .line 206
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 207
    iget-wide v4, p0, Lorg/c/a/a/t;->v:J

    iput-wide v4, p0, Lorg/c/a/a/t;->w:J

    .line 211
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 374
    :goto_0
    sget-object v2, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V

    .line 376
    :goto_1
    return v0

    .line 214
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_1
    move v0, v1

    .line 368
    :cond_1
    :goto_3
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 369
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/c/a/a/t;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/c/a/a/t;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :catch_1
    move-exception v1

    goto :goto_0

    .line 221
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 224
    :pswitch_3
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto :goto_3

    .line 229
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    :pswitch_5
    goto :goto_2

    .line 234
    :pswitch_6
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 237
    :pswitch_7
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto :goto_3

    .line 242
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    :pswitch_9
    goto :goto_2

    .line 247
    :pswitch_a
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 250
    :pswitch_b
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto :goto_3

    .line 255
    :pswitch_c
    packed-switch p1, :pswitch_data_4

    :pswitch_d
    goto :goto_2

    .line 258
    :pswitch_e
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :try_start_3
    invoke-virtual {p0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/a/r;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 263
    :pswitch_f
    :try_start_4
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_3

    .line 266
    :pswitch_10
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto :goto_3

    .line 271
    :pswitch_11
    packed-switch p1, :pswitch_data_5

    :pswitch_12
    goto :goto_2

    .line 276
    :pswitch_13
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 279
    :pswitch_14
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto/16 :goto_3

    .line 284
    :pswitch_15
    packed-switch p1, :pswitch_data_6

    :pswitch_16
    goto/16 :goto_2

    .line 287
    :pswitch_17
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :try_start_5
    invoke-virtual {p0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/a/r;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 292
    :pswitch_18
    :try_start_6
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 295
    :pswitch_19
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto/16 :goto_3

    .line 300
    :pswitch_1a
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_2

    .line 303
    :pswitch_1b
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :try_start_7
    invoke-virtual {p0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v2

    invoke-interface {v2}, Lorg/c/a/a/r;->d()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 308
    :pswitch_1c
    :try_start_8
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 311
    :pswitch_1d
    invoke-direct {p0, p1, v3}, Lorg/c/a/a/t;->a(II)Z

    move-result v0

    goto/16 :goto_3

    .line 316
    :pswitch_1e
    packed-switch p1, :pswitch_data_8

    :pswitch_1f
    goto/16 :goto_2

    .line 321
    :pswitch_20
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    :pswitch_21
    move v8, v0

    move v0, v1

    move v1, v8

    .line 326
    goto/16 :goto_3

    .line 331
    :pswitch_22
    packed-switch p1, :pswitch_data_9

    :pswitch_23
    move v8, v0

    move v0, v1

    move v1, v8

    .line 341
    goto/16 :goto_3

    .line 335
    :pswitch_24
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    :try_start_9
    invoke-direct {p0}, Lorg/c/a/a/t;->d()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move v0, v2

    goto/16 :goto_3

    .line 347
    :pswitch_25
    sparse-switch p1, :sswitch_data_0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 360
    goto/16 :goto_3

    .line 350
    :sswitch_0
    :try_start_a
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto/16 :goto_3

    .line 355
    :sswitch_1
    invoke-direct {p0}, Lorg/c/a/a/t;->d()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 356
    goto/16 :goto_3

    .line 370
    :cond_2
    :try_start_b
    sget-object v1, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    const-string v2, "setStatus {} {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .line 372
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_3

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_11
        :pswitch_15
        :pswitch_1a
        :pswitch_1e
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_25
    .end packed-switch

    .line 214
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 229
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 242
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 255
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 271
    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 284
    :pswitch_data_6
    .packed-switch 0x6
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 300
    :pswitch_data_7
    .packed-switch 0x7
        :pswitch_1b
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 316
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 331
    :pswitch_data_9
    .packed-switch 0x9
        :pswitch_24
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 987
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 502
    iput p1, p0, Lorg/c/a/a/t;->i:I

    .line 503
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 479
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lorg/c/a/b/s;->a:Lorg/c/a/c/f;

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->b(Lorg/c/a/c/f;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    sget-object v0, Lorg/c/a/b/s;->b:Lorg/c/a/c/f;

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->b(Lorg/c/a/c/f;)V

    goto :goto_0

    .line 484
    :cond_2
    new-instance v0, Lorg/c/a/c/o;

    invoke-direct {v0, p1}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->b(Lorg/c/a/c/f;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/c/a/a/t;->r()Lorg/c/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/c/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1009
    sget-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    return-void
.end method

.method protected b(Lorg/c/a/a/o;)V
    .locals 5

    .prologue
    .line 1062
    sget-boolean v0, Lorg/c/a/a/t;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1064
    :cond_0
    new-instance v0, Lorg/c/a/a/u;

    invoke-direct {v0, p0, p1}, Lorg/c/a/a/u;-><init>(Lorg/c/a/a/t;Lorg/c/a/a/o;)V

    iput-object v0, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    .line 1073
    invoke-virtual {p1}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v0

    .line 1074
    invoke-virtual {p0}, Lorg/c/a/a/t;->k()J

    move-result-wide v1

    .line 1075
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1076
    iget-object v3, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    invoke-virtual {v0, v3, v1, v2}, Lorg/c/a/a/k;->a(Lorg/c/a/d/g/f;J)V

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v1, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    invoke-virtual {v0, v1}, Lorg/c/a/a/k;->a(Lorg/c/a/d/g/f;)V

    goto :goto_0
.end method

.method public b(Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lorg/c/a/a/t;->g:Lorg/c/a/c/f;

    .line 469
    return-void
.end method

.method public b(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lorg/c/a/a/t;->r()Lorg/c/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/c/a/b/e;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 678
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 1017
    sget-object v0, Lorg/c/a/a/t;->b:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPIRED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lorg/c/a/a/t;->a:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public c(Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lorg/c/a/a/t;->l:Lorg/c/a/c/f;

    .line 704
    return-void
.end method

.method public d(Lorg/c/a/c/f;)Lorg/c/a/c/f;
    .locals 5

    .prologue
    .line 727
    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 731
    if-nez p1, :cond_1

    .line 732
    new-instance v0, Lorg/c/a/c/o;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    .line 734
    :goto_0
    invoke-interface {v0}, Lorg/c/a/c/f;->s()I

    move-result v1

    .line 735
    iget-object v2, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    invoke-interface {v0}, Lorg/c/a/c/f;->u()[B

    move-result-object v3

    invoke-interface {v0}, Lorg/c/a/c/f;->q()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 736
    if-ltz v1, :cond_0

    .line 738
    invoke-interface {v0}, Lorg/c/a/c/f;->q()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/c/a/c/f;->e(I)V

    .line 739
    monitor-exit p0

    .line 742
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lorg/c/a/a/t;->h:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lorg/c/a/a/t;->r()Lorg/c/a/b/e;

    move-result-object v0

    sget-object v1, Lorg/c/a/b/o;->w:Lorg/c/a/c/f;

    invoke-virtual {v0, v1, p1}, Lorg/c/a/b/e;->a(Lorg/c/a/c/f;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/t;->l:Lorg/c/a/c/f;

    .line 1033
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 1040
    :cond_0
    return-void

    .line 1037
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported retry attempt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/c/a/a/t;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    .line 180
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/c/a/a/t;->u:Lorg/c/a/d/g/f;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/t;->c:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/t;->d:Z

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/t;->e:Z

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->a(I)Z

    .line 185
    monitor-exit p0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lorg/c/a/a/t;->e:Z

    monitor-exit p0

    return v0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()Lorg/c/a/a/r;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/c/a/a/t;->q:Lorg/c/a/a/r;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lorg/c/a/a/t;->t:J

    return-wide v0
.end method

.method public l()Lorg/c/a/a/f;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/c/a/a/t;->j:Lorg/c/a/a/f;

    return-object v0
.end method

.method public m()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/c/a/a/t;->g:Lorg/c/a/c/f;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lorg/c/a/a/t;->i:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/c/a/a/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0}, Lorg/c/a/a/t;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/c/a/a/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lorg/c/a/b/e;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/c/a/a/t;->k:Lorg/c/a/b/e;

    return-object v0
.end method

.method public s()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/c/a/a/t;->m:Ljava/io/InputStream;

    return-object v0
.end method

.method public t()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/c/a/a/t;->l:Lorg/c/a/c/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 889
    invoke-virtual {p0}, Lorg/c/a/a/t;->g()I

    move-result v0

    invoke-static {v0}, Lorg/c/a/a/t;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 891
    iget-wide v3, p0, Lorg/c/a/a/t;->v:J

    sub-long v3, v1, v3

    .line 892
    iget v5, p0, Lorg/c/a/a/t;->x:I

    if-ltz v5, :cond_1

    const-string v5, "%s@%x=%s//%s%s#%s(%dms)->%s(%dms)"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/c/a/a/t;->a:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-object v7, p0, Lorg/c/a/a/t;->j:Lorg/c/a/a/f;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/c/a/a/t;->h:Ljava/lang/String;

    aput-object v7, v6, v12

    const/4 v7, 0x5

    iget v8, p0, Lorg/c/a/a/t;->x:I

    invoke-static {v8}, Lorg/c/a/a/t;->c(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lorg/c/a/a/t;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v0, v6, v7

    const/16 v0, 0x8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 895
    :goto_0
    invoke-virtual {p0}, Lorg/c/a/a/t;->g()I

    move-result v3

    if-lt v3, v9, :cond_0

    iget-wide v3, p0, Lorg/c/a/a/t;->w:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lorg/c/a/a/t;->w:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    :cond_0
    return-object v0

    .line 892
    :cond_1
    const-string v5, "%s@%x=%s//%s%s#%s(%dms)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/c/a/a/t;->a:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-object v7, p0, Lorg/c/a/a/t;->j:Lorg/c/a/a/f;

    aput-object v7, v6, v9

    iget-object v7, p0, Lorg/c/a/a/t;->h:Ljava/lang/String;

    aput-object v7, v6, v12

    const/4 v7, 0x5

    aput-object v0, v6, v7

    const/4 v0, 0x6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 779
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/c/a/a/t;->a(I)Z

    .line 780
    invoke-direct {p0}, Lorg/c/a/a/t;->e()V

    .line 781
    return-void
.end method

.method v()Lorg/c/a/a/a;
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lorg/c/a/a/t;->r:Lorg/c/a/a/a;

    .line 833
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/t;->r:Lorg/c/a/a/a;

    .line 834
    invoke-virtual {p0}, Lorg/c/a/a/t;->g()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 835
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 836
    :cond_0
    return-object v0
.end method

.method protected w()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method protected x()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method
