.class public Lcom/flurry/android/monolithic/sdk/impl/zp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/rq;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/py;

.field protected e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    .line 40
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 41
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->g()Lcom/flurry/android/monolithic/sdk/impl/sf;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/sf;)Lcom/flurry/android/monolithic/sdk/impl/sf;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->c:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 42
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->d:Lcom/flurry/android/monolithic/sdk/impl/py;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/ado;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->i()Lcom/flurry/android/monolithic/sdk/impl/ado;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xg;ZLcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 163
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->d:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->e(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->h(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    :goto_0
    move v1, v3

    .line 188
    :goto_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-static {v2, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    .line 189
    if-eq v2, v0, :cond_0

    move-object v0, v2

    move v1, v3

    .line 197
    :cond_0
    if-nez v1, :cond_1

    .line 198
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->d:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->f(Lcom/flurry/android/monolithic/sdk/impl/xg;)Lcom/flurry/android/monolithic/sdk/impl/sg;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_1

    .line 200
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/sg;->b:Lcom/flurry/android/monolithic/sdk/impl/sg;

    if-ne v2, v1, :cond_4

    move v1, v3

    .line 203
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    :goto_3
    return-object v0

    .line 176
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/xg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not a super-type of (declared) class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v1, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 203
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v0, p3

    move v1, p2

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/xk;Z)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/xk;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/flurry/android/monolithic/sdk/impl/xj;

    move v4, v0

    if-eqz v4, :cond_1

    .line 68
    const/4 v5, 0x0

    .line 69
    move-object/from16 v0, p6

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xj;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/xj;->e()Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v13, v4

    move-object v12, v5

    .line 76
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;ZLcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v4

    .line 79
    if-eqz p5, :cond_7

    .line 84
    if-nez v4, :cond_0

    move-object/from16 v4, p2

    .line 88
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v5

    .line 93
    if-nez v5, :cond_2

    .line 94
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); serialization type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has no content"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_1
    move-object/from16 v0, p6

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    const/4 v5, 0x0

    move-object v13, v5

    move-object v12, v4

    goto :goto_0

    .line 97
    :cond_2
    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->e(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-object v11, v4

    .line 101
    :goto_1
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/zp;->d:Lcom/flurry/android/monolithic/sdk/impl/py;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/zp;->c:Lcom/flurry/android/monolithic/sdk/impl/sf;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, p6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/sf;)Lcom/flurry/android/monolithic/sdk/impl/sf;

    move-result-object v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    sget-object v7, Lcom/flurry/android/monolithic/sdk/impl/zq;->a:[I

    invoke-virtual {v6}, Lcom/flurry/android/monolithic/sdk/impl/sf;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    :cond_3
    move v14, v5

    move-object v15, v4

    .line 137
    :goto_2
    new-instance v4, Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/xq;->i()Lcom/flurry/android/monolithic/sdk/impl/ado;

    move-result-object v6

    move-object/from16 v5, p6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v15}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/ado;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/zp;->d:Lcom/flurry/android/monolithic/sdk/impl/py;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/xk;)Ljava/lang/Boolean;

    move-result-object v5

    .line 142
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/zf;->c()Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v4

    .line 145
    :cond_4
    return-object v4

    .line 109
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 110
    if-nez v4, :cond_5

    .line 111
    const/4 v5, 0x1

    move v14, v5

    move-object v15, v4

    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    invoke-static {v4}, Lcom/flurry/android/monolithic/sdk/impl/aeb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v14, v5

    move-object v15, v4

    goto :goto_2

    .line 121
    :pswitch_1
    const/4 v4, 0x1

    .line 123
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/zp;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;

    move-result-object v5

    move v14, v4

    move-object v15, v5

    .line 124
    goto :goto_2

    .line 126
    :pswitch_2
    const/4 v5, 0x1

    .line 130
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    invoke-virtual/range {p0 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;

    move-result-object v4

    move v14, v5

    move-object v15, v4

    goto :goto_2

    :cond_6
    move v14, v5

    move-object v15, v4

    goto :goto_2

    :cond_7
    move-object v11, v4

    goto/16 :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 308
    move-object p0, p1

    .line 309
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 312
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 313
    :cond_1
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->w:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zr;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zr;-><init>()V

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zs;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zs;-><init>()V

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zp;->b()Ljava/lang/Object;

    move-result-object v0

    .line 231
    if-eqz p2, :cond_0

    .line 232
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    invoke-virtual {p0, v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->a:Lcom/flurry/android/monolithic/sdk/impl/rq;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rr;->e:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->e:Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->e()Ljava/lang/Class;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zp;->e:Ljava/lang/Object;

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 285
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 286
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zu;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zu;-><init>()V

    .line 297
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zr;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zr;-><init>()V

    goto :goto_0

    .line 291
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zs;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zs;-><init>()V

    goto :goto_0

    .line 294
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zt;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/zt;-><init>()V

    goto :goto_0

    .line 297
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
