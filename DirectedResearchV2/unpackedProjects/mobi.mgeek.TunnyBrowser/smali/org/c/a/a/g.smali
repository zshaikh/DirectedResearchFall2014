.class public Lorg/c/a/a/g;
.super Lorg/c/a/a/a;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/c/a/c/b/a;


# static fields
.field private static final k:Lorg/c/a/d/c/d;


# instance fields
.field private l:Z

.field private m:Lorg/c/a/c/f;

.field private final n:Lorg/c/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/c/a/a/g;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/a;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V

    .line 50
    check-cast p3, Lorg/c/a/c/e;

    iput-object p3, p0, Lorg/c/a/a/g;->n:Lorg/c/a/c/e;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/t;)Z
    .locals 2

    .prologue
    .line 262
    invoke-super {p0, p1}, Lorg/c/a/a/a;->a(Lorg/c/a/a/t;)Z

    move-result v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lorg/c/a/a/g;->n:Lorg/c/a/c/e;

    invoke-interface {v1}, Lorg/c/a/c/e;->e()V

    .line 265
    :cond_0
    return v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/g;->l:Z

    .line 56
    invoke-super {p0}, Lorg/c/a/a/a;->e()V

    .line 57
    return-void
.end method

.method public j()Lorg/c/a/c/r;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 61
    move v2, v5

    move v0, v3

    move-object v1, p0

    .line 69
    :goto_0
    if-eqz v0, :cond_2b

    if-ne v1, p0, :cond_2b

    .line 71
    :try_start_0
    sget-object v4, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v6, "while open={} more={} progress={}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-interface {v9}, Lorg/c/a/c/s;->q()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v9}, Lorg/c/a/b/q;->c()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-interface {v4, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v6, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 76
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v4, "exchange {} on {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v0, v4, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->g()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lorg/c/a/a/t;->g()I

    move-result v0

    if-ne v0, v11, :cond_2e

    .line 83
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v4, "commit {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-interface {v0, v4, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 85
    :try_start_2
    invoke-virtual {p0}, Lorg/c/a/a/g;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move v4, v3

    .line 89
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->k()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "flushed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lorg/c/a/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/c/a/a/t;->d(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    .line 104
    :cond_1
    iget-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_d

    .line 106
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "complete {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 108
    :try_start_4
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->i()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move v4, v3

    .line 124
    :cond_2
    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/c/a/a/g;->l:Z

    if-nez v0, :cond_3

    .line 126
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "requestComplete {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 128
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lorg/c/a/a/g;->l:Z

    .line 129
    invoke-virtual {v6}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/r;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move v4, v3

    .line 133
    :cond_3
    :try_start_7
    iget-object v0, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "parsed {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .line 140
    :cond_4
    iget-object v0, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->r()V

    .line 143
    iget-object v0, p0, Lorg/c/a/a/g;->n:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "hasProgressed {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move v4, v3

    .line 183
    :cond_5
    :try_start_8
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "finally {} on {} progress={} {}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object p0, v8, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    aput-object v9, v8, v6

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-nez v2, :cond_6

    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_6
    move v0, v3

    .line 187
    :goto_3
    if-eqz v0, :cond_2d

    .line 189
    if-nez v2, :cond_11

    iget-object v0, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    move v6, v3

    .line 190
    :goto_4
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0, v6}, Lorg/c/a/b/k;->a(Z)V

    .line 191
    invoke-virtual {p0}, Lorg/c/a/a/g;->e()V

    .line 192
    if-eqz v6, :cond_7

    .line 193
    iget-object v0, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    iget-object v7, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    invoke-virtual {v7}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/k;->j()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v0, v7}, Lorg/c/a/c/s;->a(I)V

    .line 195
    :cond_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 197
    :try_start_9
    iget-object v0, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 198
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 201
    if-eqz v0, :cond_8

    .line 203
    iget-object v7, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    invoke-virtual {v7}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 209
    :cond_8
    iget v7, p0, Lorg/c/a/a/g;->e:I

    const/16 v8, 0x65

    if-ne v7, v8, :cond_2c

    .line 211
    iget-object v7, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-virtual {v0, v7}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_2c

    .line 215
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_9

    .line 217
    iget-object v1, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v7, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v7}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 219
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    .line 226
    :goto_5
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_b

    .line 228
    if-eqz v6, :cond_a

    if-eq v0, p0, :cond_12

    .line 229
    :cond_a
    iget-object v1, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v7, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v7}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 232
    :goto_6
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    .line 235
    :cond_b
    iget-object v1, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lorg/c/a/a/g;->a()Z

    move-result v1

    if-nez v1, :cond_c

    .line 236
    iget-object v7, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    if-nez v6, :cond_13

    move v1, v3

    :goto_7
    invoke-virtual {v7, p0, v1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 237
    :cond_c
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    move v1, v4

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_9
    move v12, v0

    move v0, v1

    move-object v1, v2

    move v2, v12

    .line 241
    goto/16 :goto_0

    .line 110
    :cond_d
    :try_start_a
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v7, "addChunk"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 114
    :try_start_b
    iget-object v4, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/c/a/a/t;->d(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    .line 116
    iget-object v7, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    iget-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_f

    move v0, v3

    :goto_a
    invoke-virtual {v7, v4, v0}, Lorg/c/a/b/k;->a(Lorg/c/a/c/f;Z)V

    .line 117
    iget-object v0, p0, Lorg/c/a/a/g;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_e

    .line 118
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lorg/c/a/a/t;->a(I)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :cond_e
    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v0, v5

    .line 116
    goto :goto_a

    :cond_10
    move v0, v5

    .line 185
    goto/16 :goto_3

    :cond_11
    move v6, v5

    .line 189
    goto/16 :goto_4

    .line 231
    :cond_12
    :try_start_c
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    iput-object v1, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    goto :goto_6

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 245
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v1}, Lorg/c/a/b/q;->i()V

    .line 246
    iget-object v1, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v1}, Lorg/c/a/b/k;->c()V

    .line 247
    sget-object v1, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v2, "unhandle {} on {}"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    aput-object v5, v4, v3

    invoke-interface {v1, v2, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    move v1, v5

    .line 236
    goto :goto_7

    .line 149
    :catch_0
    move-exception v0

    move v4, v5

    .line 151
    :goto_b
    :try_start_e
    sget-object v7, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 155
    :try_start_f
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 157
    if-eqz v6, :cond_1a

    .line 161
    :try_start_10
    invoke-virtual {v6}, Lorg/c/a/a/t;->g()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_14

    invoke-virtual {v6}, Lorg/c/a/a/t;->g()I

    move-result v2

    const/16 v7, 0xb

    if-eq v2, v7, :cond_14

    invoke-virtual {v6}, Lorg/c/a/a/t;->i()Z

    move-result v2

    if-nez v2, :cond_14

    .line 165
    const/16 v2, 0x9

    invoke-virtual {v6, v2}, Lorg/c/a/a/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 166
    invoke-virtual {v6}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 179
    :cond_14
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 183
    :try_start_11
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v2, "finally {} on {} progress={} {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object p0, v7, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    aput-object v8, v7, v6

    invoke-interface {v0, v2, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 190
    iget-object v2, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v2, v0}, Lorg/c/a/b/k;->a(Z)V

    .line 191
    invoke-virtual {p0}, Lorg/c/a/a/g;->e()V

    .line 195
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 197
    :try_start_12
    iget-object v0, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 198
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 201
    if-eqz v0, :cond_15

    .line 203
    iget-object v2, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    invoke-virtual {v2}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 209
    :cond_15
    iget v2, p0, Lorg/c/a/a/g;->e:I

    const/16 v6, 0x65

    if-ne v2, v6, :cond_17

    .line 211
    iget-object v2, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-virtual {v0, v2}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_17

    .line 215
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_16

    .line 217
    iget-object v1, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v2, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 219
    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    move-object v1, v0

    .line 226
    :cond_17
    iget-object v0, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v0, :cond_18

    .line 229
    iget-object v0, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v2, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v0, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    .line 235
    :cond_18
    iget-object v0, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lorg/c/a/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 236
    iget-object v2, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    move v0, v3

    invoke-virtual {v2, p0, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 237
    :cond_19
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move v0, v3

    move-object v2, v1

    move v1, v4

    .line 240
    goto/16 :goto_9

    .line 171
    :cond_1a
    :try_start_13
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_24

    .line 172
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 179
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 183
    :catchall_3
    move-exception v0

    move v2, v3

    :goto_c
    :try_start_15
    sget-object v7, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v8, "finally {} on {} progress={} {}"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p0, v9, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v6

    const/4 v4, 0x3

    iget-object v6, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    aput-object v6, v9, v4

    invoke-interface {v7, v8, v9}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-nez v2, :cond_1b

    iget-object v4, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v4}, Lorg/c/a/b/k;->e()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v4}, Lorg/c/a/b/q;->b()Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_1b
    move v4, v3

    .line 187
    :goto_d
    if-eqz v4, :cond_23

    .line 189
    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v2}, Lorg/c/a/b/q;->d()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v2}, Lorg/c/a/b/k;->h()Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v3

    .line 190
    :goto_e
    iget-object v4, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v4, v2}, Lorg/c/a/b/k;->a(Z)V

    .line 191
    invoke-virtual {p0}, Lorg/c/a/a/g;->e()V

    .line 192
    if-eqz v2, :cond_1c

    .line 193
    iget-object v4, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    iget-object v6, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v6}, Lorg/c/a/a/k;->j()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v4, v6}, Lorg/c/a/c/s;->a(I)V

    .line 195
    :cond_1c
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 197
    :try_start_16
    iget-object v4, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 198
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    .line 201
    if-eqz v4, :cond_1d

    .line 203
    iget-object v6, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 209
    :cond_1d
    iget v6, p0, Lorg/c/a/a/g;->e:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1f

    .line 211
    iget-object v6, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-virtual {v4, v6}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v4

    .line 212
    if-eqz v4, :cond_1f

    .line 215
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_1e

    .line 217
    iget-object v1, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v6, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v6}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 219
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    move-object v1, v4

    .line 226
    :cond_1f
    iget-object v4, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    if-eqz v4, :cond_21

    .line 228
    if-eqz v2, :cond_20

    if-eq v1, p0, :cond_29

    .line 229
    :cond_20
    iget-object v1, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    iget-object v4, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v4}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 232
    :goto_f
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    .line 235
    :cond_21
    iget-object v1, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lorg/c/a/a/g;->a()Z

    move-result v1

    if-nez v1, :cond_22

    .line 236
    iget-object v4, p0, Lorg/c/a/a/g;->a:Lorg/c/a/a/o;

    if-nez v2, :cond_2a

    move v1, v3

    :goto_10
    invoke-virtual {v4, p0, v1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 237
    :cond_22
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 240
    :cond_23
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 173
    :cond_24
    :try_start_18
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_25

    .line 174
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 175
    :cond_25
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_26

    .line 176
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 177
    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 237
    :catchall_4
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :cond_27
    move v4, v5

    .line 185
    goto/16 :goto_d

    :cond_28
    move v2, v5

    .line 189
    goto/16 :goto_e

    .line 231
    :cond_29
    :try_start_1b
    iget-object v1, p0, Lorg/c/a/a/g;->i:Lorg/c/a/a/t;

    iput-object v1, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    goto :goto_f

    .line 237
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_2a
    move v1, v5

    .line 236
    goto :goto_10

    .line 245
    :cond_2b
    iget-object v0, p0, Lorg/c/a/a/g;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->i()V

    .line 246
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->c()V

    .line 247
    sget-object v0, Lorg/c/a/a/g;->k:Lorg/c/a/d/c/d;

    const-string v2, "unhandle {} on {}"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/c/a/a/g;->h:Lorg/c/a/a/t;

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    aput-object v5, v4, v3

    invoke-interface {v0, v2, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-object v1

    .line 183
    :catchall_6
    move-exception v0

    move v4, v5

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move v4, v3

    goto/16 :goto_c

    :catchall_8
    move-exception v0

    goto/16 :goto_c

    .line 149
    :catch_1
    move-exception v0

    move v4, v3

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :cond_2c
    move-object v0, v1

    goto/16 :goto_5

    :cond_2d
    move-object v0, v1

    goto/16 :goto_8

    :cond_2e
    move v4, v5

    goto/16 :goto_1
.end method

.method public k()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/c/a/a/g;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/c/a/a/g;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->c()V

    .line 257
    :cond_0
    return-void
.end method
