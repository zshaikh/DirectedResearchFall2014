.class public Lorg/c/a/a/h;
.super Lorg/c/a/a/a;
.source "BlockingHttpConnection.java"


# static fields
.field private static final k:Lorg/c/a/d/c/d;


# instance fields
.field private l:Z

.field private m:Lorg/c/a/c/f;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/c/a/a/h;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/a;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/h;->n:Z

    .line 48
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v1, "onIdleExpired {}ms {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/h;->n:Z

    .line 78
    iget-object v0, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    monitor-enter p0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 86
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 90
    sget-object v1, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public a(Lorg/c/a/a/t;)Z
    .locals 1

    .prologue
    .line 304
    invoke-super {p0, p1}, Lorg/c/a/a/a;->a(Lorg/c/a/a/t;)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit p0

    .line 312
    :cond_0
    return v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lorg/c/a/a/t;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lorg/c/a/a/a;->b(Lorg/c/a/a/t;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/h;->n:Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/c/a/a/h;->l:Z

    .line 53
    iput-boolean v0, p0, Lorg/c/a/a/h;->n:Z

    .line 54
    invoke-super {p0}, Lorg/c/a/a/a;->e()V

    .line 55
    return-void
.end method

.method public j()Lorg/c/a/c/r;
    .locals 11

    .prologue
    const/16 v10, 0x65

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    move v2, v4

    move-object v1, p0

    .line 111
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->q()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-ne v1, p0, :cond_2f

    .line 113
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v5, "open={} more={}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-interface {v8}, Lorg/c/a/c/s;->q()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v8}, Lorg/c/a/b/q;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 119
    :goto_1
    if-nez v5, :cond_1

    .line 123
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 124
    iget-object v0, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 125
    iget-boolean v5, p0, Lorg/c/a/a/h;->n:Z

    if-eqz v5, :cond_0

    .line 128
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v1}, Lorg/c/a/b/q;->i()V

    .line 295
    iget-object v1, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v1}, Lorg/c/a/b/k;->c()V

    throw v0

    :cond_0
    move-object v5, v0

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    :try_start_6
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "exchange {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    :try_start_7
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->g()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/c/a/a/t;->g()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 145
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "commit"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lorg/c/a/a/h;->d()V

    .line 150
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-nez v0, :cond_18

    .line 152
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->k()I

    move-result v0

    if-lez v0, :cond_3

    .line 154
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "flushed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_3
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/c/a/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_4

    .line 162
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/c/a/a/t;->d(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    .line 164
    :cond_4
    iget-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_c

    .line 166
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "complete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->i()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 198
    :catch_1
    move-exception v0

    .line 200
    :try_start_8
    sget-object v6, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 204
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 206
    if-eqz v5, :cond_27

    .line 210
    :try_start_a
    invoke-virtual {v5}, Lorg/c/a/a/t;->g()I

    move-result v2

    const/16 v6, 0xa

    if-eq v2, v6, :cond_5

    invoke-virtual {v5}, Lorg/c/a/a/t;->g()I

    move-result v2

    const/16 v6, 0xb

    if-eq v2, v6, :cond_5

    invoke-virtual {v5}, Lorg/c/a/a/t;->i()Z

    move-result v2

    if-nez v2, :cond_5

    .line 214
    const/16 v2, 0x9

    invoke-virtual {v5, v2}, Lorg/c/a/a/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    invoke-virtual {v5}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 228
    :cond_5
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 232
    :try_start_b
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v2, "{} {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v2, "{}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 240
    iget-object v2, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v2, v0}, Lorg/c/a/b/k;->a(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/c/a/a/h;->e()V

    .line 245
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 247
    :try_start_c
    iget-object v0, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 251
    if-eqz v0, :cond_6

    .line 253
    iget-object v2, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    invoke-virtual {v2}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 259
    :cond_6
    iget v2, p0, Lorg/c/a/a/h;->e:I

    if-ne v2, v10, :cond_9

    .line 261
    iget-object v1, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_7

    .line 266
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 267
    iget-object v0, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v2, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v0, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 269
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 276
    :cond_9
    iget-object v0, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v2, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v0, v2}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 285
    :cond_a
    iget-object v0, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/c/a/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 286
    iget-object v2, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    move v0, v3

    invoke-virtual {v2, p0, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 287
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move v0, v3

    :goto_3
    move v2, v0

    .line 290
    goto/16 :goto_0

    .line 169
    :cond_c
    :try_start_d
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "addChunk"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v6, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/c/a/a/t;->d(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    .line 174
    iget-object v7, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    iget-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_17

    move v0, v3

    :goto_4
    invoke-virtual {v7, v6, v0}, Lorg/c/a/b/k;->a(Lorg/c/a/c/f;Z)V

    .line 175
    iget-object v0, p0, Lorg/c/a/a/h;->m:Lorg/c/a/c/f;

    if-nez v0, :cond_2

    .line 176
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lorg/c/a/a/t;->a(I)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    .line 232
    :catchall_2
    move-exception v0

    :goto_5
    :try_start_e
    sget-object v5, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "{} {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v5, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "{}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-nez v2, :cond_d

    iget-object v5, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v5}, Lorg/c/a/b/k;->e()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v5}, Lorg/c/a/b/q;->b()Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_d
    move v5, v3

    .line 237
    :goto_6
    if-eqz v5, :cond_16

    .line 239
    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v2}, Lorg/c/a/b/q;->d()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v2}, Lorg/c/a/b/k;->h()Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v3

    .line 240
    :goto_7
    iget-object v5, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v5, v2}, Lorg/c/a/b/k;->a(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/c/a/a/h;->e()V

    .line 242
    if-eqz v2, :cond_e

    .line 243
    iget-object v5, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    iget-object v6, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v6}, Lorg/c/a/a/k;->j()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lorg/c/a/c/s;->a(I)V

    .line 245
    :cond_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 247
    :try_start_f
    iget-object v5, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 248
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 251
    if-eqz v5, :cond_f

    .line 253
    iget-object v6, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 259
    :cond_f
    iget v6, p0, Lorg/c/a/a/h;->e:I

    if-ne v6, v10, :cond_12

    .line 261
    iget-object v1, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-virtual {v5, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_10

    .line 266
    :cond_10
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 267
    iget-object v5, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v5, :cond_11

    .line 268
    iget-object v5, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v6, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v5, v6}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 269
    :cond_11
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 276
    :cond_12
    iget-object v5, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v5, :cond_14

    .line 278
    if-eqz v2, :cond_13

    if-eq v1, p0, :cond_2d

    .line 279
    :cond_13
    iget-object v1, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v5, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v5}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 282
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 285
    :cond_14
    iget-object v1, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lorg/c/a/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_15

    .line 286
    iget-object v1, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    if-nez v2, :cond_2e

    :goto_9
    invoke-virtual {v1, p0, v3}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 287
    :cond_15
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 289
    :cond_16
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_17
    move v0, v4

    .line 174
    goto/16 :goto_4

    .line 182
    :cond_18
    :try_start_11
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/c/a/a/h;->l:Z

    if-nez v0, :cond_19

    .line 184
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "requestComplete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/h;->l:Z

    .line 186
    invoke-virtual {v5}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/r;->b()V

    .line 190
    :cond_19
    iget-object v0, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 192
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v6, "parsed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_1a
    iget-object v0, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->r()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 232
    :try_start_12
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v5, "{} {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v0, Lorg/c/a/a/h;->k:Lorg/c/a/d/c/d;

    const-string v5, "{}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-nez v2, :cond_1b

    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1b
    move v0, v3

    .line 237
    :goto_a
    if-eqz v0, :cond_31

    .line 239
    if-nez v2, :cond_24

    iget-object v0, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->h()Z

    move-result v0

    if-eqz v0, :cond_24

    move v5, v3

    .line 240
    :goto_b
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0, v5}, Lorg/c/a/b/k;->a(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/c/a/a/h;->e()V

    .line 242
    if-eqz v5, :cond_1c

    .line 243
    iget-object v0, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    iget-object v6, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v6}, Lorg/c/a/a/k;->j()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v0, v6}, Lorg/c/a/c/s;->a(I)V

    .line 245
    :cond_1c
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 247
    :try_start_13
    iget-object v0, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 248
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    .line 251
    if-eqz v0, :cond_1d

    .line 253
    iget-object v6, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    invoke-virtual {v6}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/c/a/a/t;->a(Lorg/c/a/a/k;)V

    .line 259
    :cond_1d
    iget v6, p0, Lorg/c/a/a/h;->e:I

    if-ne v6, v10, :cond_30

    .line 261
    iget-object v1, p0, Lorg/c/a/a/h;->j:Lorg/c/a/c/s;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/c/s;)Lorg/c/a/c/r;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1e

    .line 266
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 267
    iget-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_1f

    .line 268
    iget-object v1, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v6, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v6}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 269
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 276
    :goto_c
    iget-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_21

    .line 278
    if-eqz v5, :cond_20

    if-eq v0, p0, :cond_25

    .line 279
    :cond_20
    iget-object v1, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    iget-object v6, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    invoke-virtual {v1, v6}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 282
    :goto_d
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    .line 285
    :cond_21
    iget-object v1, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lorg/c/a/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_22

    .line 286
    iget-object v6, p0, Lorg/c/a/a/h;->a:Lorg/c/a/a/o;

    if-nez v5, :cond_26

    move v1, v3

    :goto_e
    invoke-virtual {v6, p0, v1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 287
    :cond_22
    monitor-exit p0

    :goto_f
    move-object v1, v0

    move v0, v2

    .line 289
    goto/16 :goto_3

    :cond_23
    move v0, v4

    .line 235
    goto/16 :goto_a

    :cond_24
    move v5, v4

    .line 239
    goto :goto_b

    .line 281
    :cond_25
    iget-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    iput-object v1, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    goto :goto_d

    .line 287
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_26
    move v1, v4

    .line 286
    goto :goto_e

    .line 220
    :cond_27
    :try_start_15
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_28

    .line 221
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 228
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 232
    :catchall_5
    move-exception v0

    move v2, v3

    goto/16 :goto_5

    .line 222
    :cond_28
    :try_start_17
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_29

    .line 223
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 224
    :cond_29
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2a

    .line 225
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 226
    :cond_2a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 287
    :catchall_6
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_2b
    move v5, v4

    .line 235
    goto/16 :goto_6

    :cond_2c
    move v2, v4

    .line 239
    goto/16 :goto_7

    .line 281
    :cond_2d
    :try_start_1a
    iget-object v1, p0, Lorg/c/a/a/h;->i:Lorg/c/a/a/t;

    iput-object v1, p0, Lorg/c/a/a/h;->h:Lorg/c/a/a/t;

    goto/16 :goto_8

    .line 287
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_2e
    move v3, v4

    .line 286
    goto/16 :goto_9

    .line 294
    :cond_2f
    iget-object v0, p0, Lorg/c/a/a/h;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->i()V

    .line 295
    iget-object v0, p0, Lorg/c/a/a/h;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->c()V

    .line 298
    return-object v1

    :cond_30
    move-object v0, v1

    goto :goto_c

    :cond_31
    move-object v0, v1

    goto :goto_f
.end method
