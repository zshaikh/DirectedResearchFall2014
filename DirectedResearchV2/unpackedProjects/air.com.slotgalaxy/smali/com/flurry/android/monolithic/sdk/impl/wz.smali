.class public Lcom/flurry/android/monolithic/sdk/impl/wz;
.super Lcom/flurry/android/monolithic/sdk/impl/sp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sp;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sp;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sp;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sp;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sp;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sp;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/wz;

    if-eq v0, v1, :cond_0

    move-object v0, p0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wz;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/wz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sp;Z)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->f:Lcom/flurry/android/monolithic/sdk/impl/tr;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/wz;->i(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->e:Lcom/flurry/android/monolithic/sdk/impl/qu;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->e:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/th;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/th;->c()Z

    move-result v1

    .line 81
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/th;->h()Z

    move-result v0

    .line 83
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 84
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize Throwable of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v2, v8

    move-object v3, v7

    move-object v0, v7

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v4

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v4, v5, :cond_c

    .line 93
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->g()Ljava/lang/String;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->h:Lcom/flurry/android/monolithic/sdk/impl/tj;

    invoke-virtual {v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/tj;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/sw;

    move-result-object v5

    .line 95
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 97
    if-eqz v5, :cond_7

    .line 98
    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {v5, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V

    move v9, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    .line 92
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move v9, v0

    move-object v0, v3

    move-object v3, v2

    move v2, v9

    goto :goto_1

    .line 103
    :cond_5
    if-nez v3, :cond_6

    .line 104
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->h:Lcom/flurry/android/monolithic/sdk/impl/tj;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/tj;->b()I

    move-result v3

    .line 105
    add-int/2addr v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    :cond_6
    add-int/lit8 v4, v2, 0x1

    aput-object v5, v3, v2

    .line 108
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v5, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move v9, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    .line 109
    goto :goto_2

    .line 113
    :cond_7
    const-string v5, "message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 114
    if-eqz v1, :cond_9

    .line 115
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/th;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    if-eqz v3, :cond_e

    move v5, v8

    .line 118
    :goto_3
    if-ge v5, v2, :cond_8

    .line 119
    aget-object v0, v3, v5

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 120
    add-int/lit8 v6, v5, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v0, v4, v6}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_3

    :cond_8
    move v0, v2

    move-object v3, v4

    move-object v2, v7

    .line 122
    goto :goto_2

    .line 130
    :cond_9
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->k:Ljava/util/HashSet;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->k:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 131
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->d()Lcom/flurry/android/monolithic/sdk/impl/ow;

    move v9, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    .line 132
    goto :goto_2

    .line 134
    :cond_a
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->j:Lcom/flurry/android/monolithic/sdk/impl/sv;

    if-eqz v5, :cond_b

    .line 135
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->j:Lcom/flurry/android/monolithic/sdk/impl/sv;

    invoke-virtual {v5, p1, p2, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/sv;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;Ljava/lang/String;)V

    move v9, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    .line 136
    goto :goto_2

    .line 139
    :cond_b
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/wz;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;Ljava/lang/String;)V

    move v9, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    goto :goto_2

    .line 142
    :cond_c
    if-nez v0, :cond_0

    .line 149
    if-eqz v1, :cond_d

    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    invoke-virtual {v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/th;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    :goto_4
    if-eqz v3, :cond_0

    move v1, v8

    .line 156
    :goto_5
    if-ge v1, v2, :cond_0

    .line 157
    aget-object p0, v3, v1

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 158
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    invoke-virtual {p0, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 152
    :cond_d
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wz;->d:Lcom/flurry/android/monolithic/sdk/impl/th;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/th;->m()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_e
    move v0, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method
