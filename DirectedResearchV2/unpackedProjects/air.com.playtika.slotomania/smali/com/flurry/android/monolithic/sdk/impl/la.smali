.class public Lcom/flurry/android/monolithic/sdk/impl/la;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/kq;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/ji;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/kq;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kq;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/kq;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    return-void
.end method

.method private b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 144
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected a(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-void
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/lb;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 66
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->d(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->e(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)I

    move-result v0

    .line 71
    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/mc;->b(I)V

    .line 72
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 74
    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->g(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 75
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->f(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 76
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 77
    :pswitch_8
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/mc;->c(I)V

    goto :goto_0

    .line 78
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mc;->b(J)V

    goto :goto_0

    .line 79
    :pswitch_a
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(F)V

    goto :goto_0

    .line 80
    :pswitch_b
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(D)V

    goto :goto_0

    .line 81
    :pswitch_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(Z)V

    goto :goto_0

    .line 82
    :pswitch_d
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 64
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

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/flurry/android/monolithic/sdk/impl/mc;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    .line 58
    return-void
.end method

.method protected b(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    .line 103
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/la;->a:Lcom/flurry/android/monolithic/sdk/impl/kq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->b()I

    move-result v5

    invoke-virtual {v3, p2, v4, v5, v1}, Lcom/flurry/android/monolithic/sdk/impl/kq;->b(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->c()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v4

    invoke-virtual {p0, v4, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Ljava/lang/NullPointerException;Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method protected c(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 174
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(I)V

    .line 117
    return-void
.end method

.method protected c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(Ljava/nio/ByteBuffer;)V

    .line 200
    return-void
.end method

.method protected d(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 181
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->i()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    .line 124
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Ljava/lang/Object;)J

    move-result-wide v1

    .line 125
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->b()V

    .line 126
    invoke-virtual {p3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(J)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->b(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->c()V

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->d()V

    .line 132
    return-void
.end method

.method protected e(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->j()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    .line 159
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->c(Ljava/lang/Object;)I

    move-result v0

    .line 160
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->e()V

    .line 161
    int-to-long v2, v0

    invoke-virtual {p3, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->a(J)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/la;->d(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->c()V

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/mc;->f()V

    .line 168
    return-void
.end method

.method protected f(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/la;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    .line 189
    return-void
.end method

.method protected g(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/ld;

    invoke-interface {p2}, Lcom/flurry/android/monolithic/sdk/impl/ld;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->l()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/mc;->b([BII)V

    .line 207
    return-void
.end method
