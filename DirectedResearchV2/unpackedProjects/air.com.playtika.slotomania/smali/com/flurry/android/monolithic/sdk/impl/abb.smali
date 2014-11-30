.class public Lcom/flurry/android/monolithic/sdk/impl/abb;
.super Lcom/flurry/android/monolithic/sdk/impl/aay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aay",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/aay;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abb;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->a:Z

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/abb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0
.end method

.method public a(Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 50
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 52
    const/4 v3, 0x0

    move v7, v3

    move-object v3, v1

    move v1, v7

    .line 55
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 77
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 60
    invoke-virtual {v3, v5}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v6

    .line 61
    if-nez v6, :cond_6

    .line 63
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v6}, Lcom/flurry/android/monolithic/sdk/impl/afm;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p3, v6, v5}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p3}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v3

    .line 69
    :goto_2
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 71
    :goto_3
    if-nez v2, :cond_5

    .line 72
    invoke-virtual {v3, v4, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    move-object v3, v5

    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {p0, v3, v5, p3}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v3

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {v3, v4, p2, p3, v2}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_6
    move-object v5, v3

    move-object v3, v6

    goto :goto_3
.end method

.method public a(Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/abb;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 92
    const/4 v2, 0x0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 96
    if-nez v3, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 110
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    :cond_1
    return-void

    .line 99
    :cond_2
    if-nez v1, :cond_3

    .line 100
    :try_start_1
    invoke-virtual {p4, v3, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 108
    invoke-virtual {p0, p3, v3, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 102
    :cond_3
    :try_start_2
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abb;->a(Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method
