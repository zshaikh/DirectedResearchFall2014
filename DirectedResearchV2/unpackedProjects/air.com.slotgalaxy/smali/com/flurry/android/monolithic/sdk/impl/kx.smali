.class public Lcom/flurry/android/monolithic/sdk/impl/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/lw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/android/monolithic/sdk/impl/lw",
        "<TD;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Lcom/flurry/android/monolithic/sdk/impl/mh;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/kq;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/ji;

.field private c:Lcom/flurry/android/monolithic/sdk/impl/ji;

.field private d:Lcom/flurry/android/monolithic/sdk/impl/mh;

.field private final e:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ky;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ky;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/kx;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a()Lcom/flurry/android/monolithic/sdk/impl/kq;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/kq;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/kq;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->d:Lcom/flurry/android/monolithic/sdk/impl/mh;

    .line 60
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 61
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->c:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 62
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->e:Ljava/lang/Thread;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/kq;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    return-object v0
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/mh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->e:Ljava/lang/Thread;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->d:Lcom/flurry/android/monolithic/sdk/impl/mh;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->d:Lcom/flurry/android/monolithic/sdk/impl/mh;

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kx;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 112
    if-nez v0, :cond_3

    .line 113
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/nx;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/nx;-><init>()V

    .line 114
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kx;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_1
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mh;

    .line 117
    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a()Lcom/flurry/android/monolithic/sdk/impl/ly;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Lcom/flurry/android/monolithic/sdk/impl/mh;

    move-result-object v0

    .line 120
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->e:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    .line 124
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->d:Lcom/flurry/android/monolithic/sdk/impl/mh;

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/lx;->k()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/ko;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ko;

    invoke-interface {p1}, Lcom/flurry/android/monolithic/sdk/impl/ko;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 315
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 316
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move-object v1, p1

    .line 318
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;ILcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 304
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 305
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    move-object v1, p1

    .line 307
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ks;

    invoke-direct {v1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ks;-><init>(ILcom/flurry/android/monolithic/sdk/impl/ji;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ld;

    .line 258
    invoke-interface {p0}, Lcom/flurry/android/monolithic/sdk/impl/ld;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->l()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/lx;->b([BII)V

    .line 259
    return-object p0
.end method

.method protected a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kz;->a:[I

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->s()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_9
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_a
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_b
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_c
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_d
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->b()V

    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/android/monolithic/sdk/impl/lx;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->c:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/mh;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/mh;->a(Lcom/flurry/android/monolithic/sdk/impl/lx;)Lcom/flurry/android/monolithic/sdk/impl/mi;

    .line 135
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->c:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, p1, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/mh;->v()V

    .line 137
    return-object v1
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ku;

    invoke-direct {v0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/ku;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method protected b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    const-string v0, "String"

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    const-string v1, "avro.java.string"

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/lx;->h()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->u()[Lcom/flurry/android/monolithic/sdk/impl/js;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v4, v6, v8

    .line 170
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/js;->b()I

    move-result v3

    .line 171
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/js;->a()Ljava/lang/String;

    move-result-object v2

    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/flurry/android/monolithic/sdk/impl/kq;->b(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kx;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/js;->c()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v4

    invoke-virtual {p0, v9, v4, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 172
    :cond_0
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_1

    .line 176
    :cond_1
    return-object v1
.end method

.method protected b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    move-object v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->a(Lcom/flurry/android/monolithic/sdk/impl/nw;)Lcom/flurry/android/monolithic/sdk/impl/nw;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/lx;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->i()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v5

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->m()J

    move-result-wide v6

    .line 197
    const-wide/16 v8, 0x0

    .line 198
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    .line 199
    long-to-int v10, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;ILcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v10

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    .line 201
    :cond_0
    const-wide/16 v11, 0x0

    :goto_0
    cmp-long v13, v11, v8

    if-gez v13, :cond_1

    .line 202
    add-long v13, v6, v11

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v13

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 201
    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    goto :goto_0

    .line 204
    :cond_1
    add-long/2addr v6, v8

    .line 205
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->n()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-gtz v11, :cond_0

    move-object v5, v10

    .line 208
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;ILcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method protected c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    move-object v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/lx;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 233
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->j()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    .line 234
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->p()J

    move-result-wide v1

    .line 235
    long-to-int v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 236
    cmp-long v4, v1, v8

    if-lez v4, :cond_2

    .line 238
    :cond_0
    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    .line 239
    invoke-virtual {p0, v7, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v7, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/mh;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mh;->q()J

    move-result-wide v1

    cmp-long v4, v1, v8

    if-gtz v4, :cond_0

    .line 243
    :cond_2
    return-object v3
.end method
