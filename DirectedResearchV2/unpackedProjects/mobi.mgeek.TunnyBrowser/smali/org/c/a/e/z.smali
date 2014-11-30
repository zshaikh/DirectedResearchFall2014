.class public Lorg/c/a/e/z;
.super Ljava/lang/Object;
.source "WebSocketGeneratorRFC6455.java"

# interfaces
.implements Lorg/c/a/e/y;


# instance fields
.field private final a:Lorg/c/a/e/k;

.field private final b:Lorg/c/a/c/s;

.field private c:Lorg/c/a/c/f;

.field private final d:[B

.field private e:I

.field private f:Z

.field private final g:Lorg/c/a/e/b;

.field private h:Z


# direct methods
.method public constructor <init>(Lorg/c/a/e/k;Lorg/c/a/c/s;Lorg/c/a/e/b;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/c/a/e/z;->d:[B

    .line 55
    iput-object p1, p0, Lorg/c/a/e/z;->a:Lorg/c/a/e/k;

    .line 56
    iput-object p2, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    .line 57
    iput-object p3, p0, Lorg/c/a/e/z;->g:Lorg/c/a/e/b;

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 8

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    .line 210
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/c/a/e/z;->c()I

    move-result v0

    .line 212
    iget-object v1, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 215
    iget-object v3, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    invoke-interface {v3}, Lorg/c/a/c/s;->s()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 216
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->m()I

    move-result v5

    if-lez v5, :cond_3

    .line 218
    iget-object v5, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    sub-long v6, v3, v1

    invoke-interface {v5, v6, v7}, Lorg/c/a/c/s;->a(J)Z

    move-result v5

    .line 219
    if-nez v5, :cond_2

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/c/a/e/z;->c()I

    move-result v5

    add-int/2addr v0, v5

    .line 228
    goto :goto_1

    .line 230
    :cond_3
    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(BB[BII)V
    .locals 15

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/c/a/e/z;->h:Z

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lorg/c/a/c/t;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Lorg/c/a/c/t;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 71
    :cond_0
    const/16 v1, 0x8

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 72
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/c/a/e/z;->h:Z

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/c/a/e/z;->g:Lorg/c/a/e/b;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v8, v1

    .line 76
    :goto_0
    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    if-nez v1, :cond_2

    .line 77
    if-eqz v8, :cond_8

    iget-object v1, p0, Lorg/c/a/e/z;->a:Lorg/c/a/e/k;

    invoke-virtual {v1}, Lorg/c/a/e/k;->a()Lorg/c/a/c/f;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    .line 79
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/c/a/e/u;->a(B)Z

    move-result v9

    .line 81
    if-eqz v8, :cond_9

    const/16 v1, 0xe

    :goto_2
    move/from16 v6, p5

    move/from16 v2, p2

    .line 85
    :goto_3
    iget-boolean v3, p0, Lorg/c/a/e/z;->f:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 86
    :cond_3
    and-int/lit8 v3, p1, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/c/a/e/z;->f:Z

    .line 90
    add-int v3, v6, v1

    iget-object v4, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v4}, Lorg/c/a/c/f;->v()I

    move-result v4

    if-le v3, v4, :cond_a

    .line 93
    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    .line 94
    iget-object v3, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v3}, Lorg/c/a/c/f;->v()I

    move-result v3

    sub-int v5, v3, v1

    move v7, v2

    .line 100
    :goto_4
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->s()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 102
    invoke-virtual {p0}, Lorg/c/a/e/z;->c()I

    .line 103
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->s()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 104
    invoke-virtual {p0}, Lorg/c/a/e/z;->a()I

    .line 108
    :cond_4
    const v2, 0xffff

    if-le v5, v2, :cond_c

    .line 110
    iget-object v3, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_b

    const/4 v2, -0x1

    :goto_5
    aput-byte v2, v4, v10

    const/4 v2, 0x2

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x3

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x4

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x5

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x6

    shr-int/lit8 v10, v5, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/4 v2, 0x7

    shr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/16 v2, 0x8

    shr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/16 v2, 0x9

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    invoke-interface {v3, v4}, Lorg/c/a/c/f;->a([B)I

    .line 138
    :goto_6
    if-eqz v8, :cond_5

    .line 140
    iget-object v2, p0, Lorg/c/a/e/z;->g:Lorg/c/a/e/b;

    iget-object v3, p0, Lorg/c/a/e/z;->d:[B

    invoke-interface {v2, v3}, Lorg/c/a/e/b;->a([B)V

    .line 141
    const/4 v2, 0x0

    iput v2, p0, Lorg/c/a/e/z;->e:I

    .line 142
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    iget-object v3, p0, Lorg/c/a/e/z;->d:[B

    invoke-interface {v2, v3}, Lorg/c/a/c/f;->a([B)I

    :cond_5
    move v4, v5

    .line 147
    :cond_6
    :goto_7
    if-lez v4, :cond_14

    .line 149
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->f()V

    .line 150
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->s()I

    move-result v2

    if-ge v4, v2, :cond_10

    move v3, v4

    .line 152
    :goto_8
    if-eqz v8, :cond_11

    .line 154
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_12

    .line 155
    iget-object v10, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    sub-int v11, v5, v4

    add-int v11, v11, p4

    add-int/2addr v11, v2

    aget-byte v11, p3, v11

    iget-object v12, p0, Lorg/c/a/e/z;->d:[B

    iget v13, p0, Lorg/c/a/e/z;->e:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/c/a/e/z;->e:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-interface {v10, v11}, Lorg/c/a/c/f;->a(B)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 74
    :cond_7
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_0

    .line 77
    :cond_8
    iget-object v1, p0, Lorg/c/a/e/z;->a:Lorg/c/a/e/k;

    invoke-virtual {v1}, Lorg/c/a/e/k;->b()Lorg/c/a/c/f;

    move-result-object v1

    goto/16 :goto_1

    .line 81
    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_2

    .line 96
    :cond_a
    if-eqz v9, :cond_18

    .line 97
    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    move v5, v6

    move v7, v2

    goto/16 :goto_4

    .line 110
    :cond_b
    const/16 v2, 0x7f

    goto/16 :goto_5

    .line 122
    :cond_c
    const/16 v2, 0x7e

    if-lt v5, v2, :cond_e

    .line 124
    iget-object v3, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    const/4 v2, 0x4

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_d

    const/4 v2, -0x2

    :goto_a
    aput-byte v2, v4, v10

    const/4 v2, 0x2

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/4 v2, 0x3

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    invoke-interface {v3, v4}, Lorg/c/a/c/f;->a([B)I

    goto/16 :goto_6

    :cond_d
    const/16 v2, 0x7e

    goto :goto_a

    .line 132
    :cond_e
    iget-object v3, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    const/4 v2, 0x2

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_f

    or-int/lit16 v2, v5, 0x80

    :goto_b
    int-to-byte v2, v2

    aput-byte v2, v4, v10

    invoke-interface {v3, v4}, Lorg/c/a/c/f;->a([B)I

    goto/16 :goto_6

    :cond_f
    move v2, v5

    goto :goto_b

    .line 150
    :cond_10
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->s()I

    move-result v2

    move v3, v2

    goto/16 :goto_8

    .line 158
    :cond_11
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    sub-int v10, v5, v4

    add-int v10, v10, p4

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v10, v3}, Lorg/c/a/c/f;->b([BII)I

    .line 160
    :cond_12
    sub-int/2addr v4, v3

    .line 161
    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->s()I

    move-result v2

    if-lez v2, :cond_13

    .line 164
    invoke-virtual {p0}, Lorg/c/a/e/z;->c()I

    goto/16 :goto_7

    .line 169
    :cond_13
    invoke-virtual {p0}, Lorg/c/a/e/z;->a()I

    .line 170
    if-nez v4, :cond_6

    .line 173
    invoke-virtual {p0}, Lorg/c/a/e/z;->c()I

    goto/16 :goto_7

    .line 177
    :cond_14
    add-int p4, p4, v5

    .line 178
    sub-int/2addr v6, v5

    .line 180
    if-gtz v6, :cond_17

    .line 181
    if-nez v9, :cond_16

    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, p0, Lorg/c/a/e/z;->f:Z

    .line 183
    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    if-nez v1, :cond_15

    .line 185
    iget-object v1, p0, Lorg/c/a/e/z;->a:Lorg/c/a/e/k;

    iget-object v2, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-virtual {v1, v2}, Lorg/c/a/e/k;->a(Lorg/c/a/c/f;)V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_15
    monitor-exit p0

    return-void

    .line 181
    :cond_16
    const/4 v1, 0x0

    goto :goto_c

    :cond_17
    move v2, v7

    goto/16 :goto_3

    :cond_18
    move v5, v6

    move v7, v2

    goto/16 :goto_4
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->q()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    new-instance v0, Lorg/c/a/c/t;

    invoke-direct {v0}, Lorg/c/a/c/t;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/s;->b(Lorg/c/a/c/f;)I

    move-result v0

    .line 198
    :cond_1
    iget-boolean v1, p0, Lorg/c/a/e/z;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v1

    if-nez v1, :cond_2

    .line 199
    iget-object v1, p0, Lorg/c/a/e/z;->b:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :cond_2
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized d()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/c/a/e/z;->a:Lorg/c/a/e/k;

    iget-object v1, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/e/k;->a(Lorg/c/a/c/f;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lorg/c/a/e/z;->c:Lorg/c/a/c/f;

    .line 255
    const-string v1, "%s@%x closed=%b buffer=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lorg/c/a/e/z;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    goto :goto_0
.end method
