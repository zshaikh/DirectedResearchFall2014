.class public Lorg/c/a/e/ac;
.super Ljava/lang/Object;
.source "WebSocketParserRFC6455.java"

# interfaces
.implements Lorg/c/a/e/aa;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Lorg/c/a/e/k;

.field private final c:Lorg/c/a/c/s;

.field private final d:Lorg/c/a/e/ab;

.field private final e:Z

.field private f:Lorg/c/a/e/ae;

.field private g:Lorg/c/a/c/f;

.field private h:B

.field private i:B

.field private j:I

.field private k:J

.field private l:Z

.field private final m:[B

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/c/a/e/ac;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/e/ac;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/e/k;Lorg/c/a/c/s;Lorg/c/a/e/ab;Z)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/c/a/e/ac;->m:[B

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/e/ac;->p:Z

    .line 84
    iput-object p1, p0, Lorg/c/a/e/ac;->b:Lorg/c/a/e/k;

    .line 85
    iput-object p2, p0, Lorg/c/a/e/ac;->c:Lorg/c/a/c/s;

    .line 86
    iput-object p3, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    .line 87
    iput-boolean p4, p0, Lorg/c/a/e/ac;->e:Z

    .line 88
    sget-object v0, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    iput-object v0, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 89
    return-void
.end method


# virtual methods
.method public a()I
    .locals 14

    .prologue
    const/16 v13, 0x3f0

    const/16 v12, 0x3ea

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/c/a/e/ac;->b:Lorg/c/a/e/k;

    invoke-virtual {v0}, Lorg/c/a/e/k;->a()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    :cond_0
    move v1, v4

    move v2, v6

    .line 138
    :cond_1
    if-nez v2, :cond_1d

    iget-object v0, p0, Lorg/c/a/e/ac;->c:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-lez v0, :cond_1d

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 143
    :cond_3
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v7, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    if-ne v5, v7, :cond_5

    move v5, v3

    :goto_0
    if-ge v0, v5, :cond_9

    .line 146
    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->f()V

    .line 149
    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->s()I

    move-result v1

    if-nez v1, :cond_8

    .line 152
    iget-boolean v1, p0, Lorg/c/a/e/ac;->p:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v5, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    if-ne v1, v5, :cond_7

    .line 154
    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-interface {v1, v2}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->f()V

    .line 156
    iget-boolean v2, p0, Lorg/c/a/e/ac;->l:Z

    if-eqz v2, :cond_6

    .line 158
    invoke-interface {v1}, Lorg/c/a/c/f;->u()[B

    move-result-object v2

    if-nez v2, :cond_4

    .line 159
    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->c()Lorg/c/a/c/f;

    move-result-object v1

    .line 160
    :cond_4
    invoke-interface {v1}, Lorg/c/a/c/f;->u()[B

    move-result-object v5

    .line 161
    invoke-interface {v1}, Lorg/c/a/c/f;->q()I

    move-result v7

    .line 162
    invoke-interface {v1}, Lorg/c/a/c/f;->h()I

    move-result v2

    :goto_1
    if-ge v2, v7, :cond_6

    .line 163
    aget-byte v8, v5, v2

    iget-object v9, p0, Lorg/c/a/e/ac;->m:[B

    iget v10, p0, Lorg/c/a/e/ac;->n:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/c/a/e/ac;->n:I

    rem-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_5
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    goto :goto_0

    .line 167
    :cond_6
    iget v2, p0, Lorg/c/a/e/ac;->j:I

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/c/a/e/ac;->j:I

    .line 169
    iget-object v2, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    iget-byte v5, p0, Lorg/c/a/e/ac;->h:B

    and-int/lit16 v5, v5, 0xf7

    int-to-byte v5, v5

    iget-byte v7, p0, Lorg/c/a/e/ac;->i:B

    invoke-interface {v2, v5, v7, v1}, Lorg/c/a/e/ab;->a(BBLorg/c/a/c/f;)V

    .line 171
    iput-byte v6, p0, Lorg/c/a/e/ac;->i:B

    move v2, v3

    .line 174
    :cond_7
    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->s()I

    move-result v1

    if-nez v1, :cond_8

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/e/ac;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v2}, Lorg/c/a/c/f;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_8
    :try_start_0
    iget-object v1, p0, Lorg/c/a/e/ac;->c:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 182
    :goto_2
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->m()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    if-gtz v1, :cond_3

    .line 195
    :cond_9
    :goto_3
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v7, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    if-ne v5, v7, :cond_b

    move v5, v3

    :goto_4
    if-ge v0, v5, :cond_c

    move v0, v1

    .line 358
    :goto_5
    if-eqz v2, :cond_1b

    :goto_6
    return v3

    .line 181
    :cond_a
    :try_start_1
    iget-object v1, p0, Lorg/c/a/e/ac;->c:Lorg/c/a/c/s;

    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v1, v5}, Lorg/c/a/c/s;->a(Lorg/c/a/c/f;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 187
    :catch_0
    move-exception v1

    .line 189
    sget-object v5, Lorg/c/a/e/ac;->a:Lorg/c/a/d/c/d;

    invoke-interface {v5, v1}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    move v1, v4

    .line 191
    goto :goto_3

    .line 195
    :cond_b
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    goto :goto_4

    .line 201
    :cond_c
    :goto_7
    :pswitch_0
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v7, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    if-eq v5, v7, :cond_17

    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v7, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    if-ne v5, v7, :cond_d

    move v5, v3

    :goto_8
    if-lt v0, v5, :cond_17

    .line 203
    sget-object v5, Lorg/c/a/e/ad;->a:[I

    iget-object v7, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v7}, Lorg/c/a/e/ae;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto :goto_7

    .line 206
    :pswitch_1
    iput-boolean v6, p0, Lorg/c/a/e/ac;->o:Z

    .line 207
    iget-byte v5, p0, Lorg/c/a/e/ac;->i:B

    const/16 v7, 0x8

    if-ne v5, v7, :cond_e

    sget-object v5, Lorg/c/a/e/ae;->j:Lorg/c/a/e/ae;

    :goto_9
    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 208
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto :goto_7

    .line 201
    :cond_d
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    goto :goto_8

    .line 207
    :cond_e
    sget-object v5, Lorg/c/a/e/ae;->b:Lorg/c/a/e/ae;

    goto :goto_9

    .line 212
    :pswitch_2
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->g()B

    move-result v5

    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 214
    and-int/lit8 v7, v5, 0xf

    int-to-byte v7, v7

    iput-byte v7, p0, Lorg/c/a/e/ac;->i:B

    .line 215
    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    iput-byte v5, p0, Lorg/c/a/e/ac;->h:B

    .line 217
    iget-byte v5, p0, Lorg/c/a/e/ac;->i:B

    invoke-static {v5}, Lorg/c/a/e/u;->b(B)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-byte v5, p0, Lorg/c/a/e/ac;->h:B

    invoke-static {v5}, Lorg/c/a/e/u;->a(B)Z

    move-result v5

    if-nez v5, :cond_f

    .line 219
    sget-object v2, Lorg/c/a/e/ac;->a:Lorg/c/a/d/c/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragmented Control from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/c/a/e/ac;->c:Lorg/c/a/c/s;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v2, v5, v7}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    const-string v5, "Fragmented control"

    invoke-interface {v2, v12, v5}, Lorg/c/a/e/ab;->a(ILjava/lang/String;)V

    .line 222
    iput-boolean v3, p0, Lorg/c/a/e/ac;->o:Z

    move v2, v3

    .line 225
    :cond_f
    sget-object v5, Lorg/c/a/e/ae;->c:Lorg/c/a/e/ae;

    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 226
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto/16 :goto_7

    .line 231
    :pswitch_3
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->g()B

    move-result v7

    .line 232
    add-int/lit8 v0, v0, -0x1

    .line 233
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_10

    move v5, v3

    :goto_a
    iput-boolean v5, p0, Lorg/c/a/e/ac;->l:Z

    .line 234
    and-int/lit8 v5, v7, 0x7f

    int-to-byte v5, v5

    .line 236
    packed-switch v5, :pswitch_data_1

    .line 247
    and-int/lit8 v5, v5, 0x7f

    int-to-long v7, v5

    iput-wide v7, p0, Lorg/c/a/e/ac;->k:J

    .line 248
    iget-boolean v5, p0, Lorg/c/a/e/ac;->l:Z

    if-eqz v5, :cond_11

    sget-object v5, Lorg/c/a/e/ae;->f:Lorg/c/a/e/ae;

    :goto_b
    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 250
    :goto_c
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto/16 :goto_7

    :cond_10
    move v5, v6

    .line 233
    goto :goto_a

    .line 239
    :pswitch_4
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/c/a/e/ac;->k:J

    .line 240
    sget-object v5, Lorg/c/a/e/ae;->e:Lorg/c/a/e/ae;

    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    goto :goto_c

    .line 243
    :pswitch_5
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/c/a/e/ac;->k:J

    .line 244
    sget-object v5, Lorg/c/a/e/ae;->d:Lorg/c/a/e/ae;

    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    goto :goto_c

    .line 248
    :cond_11
    sget-object v5, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    goto :goto_b

    .line 254
    :pswitch_6
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->g()B

    move-result v5

    .line 255
    add-int/lit8 v0, v0, -0x1

    .line 256
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    const-wide/16 v9, 0x100

    mul-long/2addr v7, v9

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/c/a/e/ac;->k:J

    .line 257
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    if-nez v5, :cond_c

    .line 259
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->v()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-lez v5, :cond_12

    iget-boolean v5, p0, Lorg/c/a/e/ac;->p:Z

    if-nez v5, :cond_12

    .line 262
    iget-object v2, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frame size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v7}, Lorg/c/a/c/f;->v()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v13, v5}, Lorg/c/a/e/ab;->a(ILjava/lang/String;)V

    .line 263
    iput-boolean v3, p0, Lorg/c/a/e/ac;->o:Z

    move v2, v3

    .line 266
    :cond_12
    iget-boolean v5, p0, Lorg/c/a/e/ac;->l:Z

    if-eqz v5, :cond_13

    sget-object v5, Lorg/c/a/e/ae;->f:Lorg/c/a/e/ae;

    :goto_d
    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 267
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto/16 :goto_7

    .line 266
    :cond_13
    sget-object v5, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    goto :goto_d

    .line 272
    :pswitch_7
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->g()B

    move-result v5

    .line 273
    add-int/lit8 v0, v0, -0x1

    .line 274
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    const-wide/16 v9, 0x100

    mul-long/2addr v7, v9

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/c/a/e/ac;->k:J

    .line 275
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    if-nez v5, :cond_c

    .line 277
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    long-to-int v5, v7

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    .line 278
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5}, Lorg/c/a/c/f;->v()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_14

    iget-boolean v5, p0, Lorg/c/a/e/ac;->p:Z

    if-nez v5, :cond_14

    .line 281
    iget-object v2, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frame size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v7}, Lorg/c/a/c/f;->v()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v13, v5}, Lorg/c/a/e/ab;->a(ILjava/lang/String;)V

    .line 282
    iput-boolean v3, p0, Lorg/c/a/e/ac;->o:Z

    move v2, v3

    .line 285
    :cond_14
    iget-boolean v5, p0, Lorg/c/a/e/ac;->l:Z

    if-eqz v5, :cond_15

    sget-object v5, Lorg/c/a/e/ae;->f:Lorg/c/a/e/ae;

    :goto_e
    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 286
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto/16 :goto_7

    .line 285
    :cond_15
    sget-object v5, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    goto :goto_e

    .line 291
    :pswitch_8
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    iget-object v7, p0, Lorg/c/a/e/ac;->m:[B

    const/4 v8, 0x4

    invoke-interface {v5, v7, v6, v8}, Lorg/c/a/c/f;->a([BII)I

    .line 292
    iput v6, p0, Lorg/c/a/e/ac;->n:I

    .line 293
    add-int/lit8 v0, v0, -0x4

    .line 294
    sget-object v5, Lorg/c/a/e/ae;->g:Lorg/c/a/e/ae;

    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 295
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    invoke-virtual {v5}, Lorg/c/a/e/ae;->a()I

    move-result v5

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    goto/16 :goto_7

    .line 299
    :pswitch_9
    iget-wide v7, p0, Lorg/c/a/e/ac;->k:J

    long-to-int v5, v7

    iput v5, p0, Lorg/c/a/e/ac;->j:I

    .line 300
    iget-boolean v5, p0, Lorg/c/a/e/ac;->o:Z

    if-eqz v5, :cond_16

    sget-object v5, Lorg/c/a/e/ae;->i:Lorg/c/a/e/ae;

    :goto_f
    iput-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    goto/16 :goto_7

    :cond_16
    sget-object v5, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    goto :goto_f

    .line 307
    :pswitch_a
    iget v2, p0, Lorg/c/a/e/ac;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 309
    iget-object v5, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v5, v2}, Lorg/c/a/c/f;->f(I)I

    .line 310
    sub-int/2addr v0, v2

    .line 311
    iget v5, p0, Lorg/c/a/e/ac;->j:I

    sub-int v2, v5, v2

    iput v2, p0, Lorg/c/a/e/ac;->j:I

    .line 312
    iget v2, p0, Lorg/c/a/e/ac;->j:I

    if-nez v2, :cond_1c

    .line 313
    sget-object v2, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    iput-object v2, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    move v2, v3

    goto/16 :goto_7

    .line 318
    :pswitch_b
    iget-object v2, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v2, v0}, Lorg/c/a/c/f;->f(I)I

    move v0, v6

    move v2, v3

    .line 319
    goto/16 :goto_7

    .line 324
    :cond_17
    iget-object v5, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    sget-object v7, Lorg/c/a/e/ae;->h:Lorg/c/a/e/ae;

    if-ne v5, v7, :cond_1

    iget v5, p0, Lorg/c/a/e/ac;->j:I

    if-lt v0, v5, :cond_1

    .line 326
    iget-boolean v0, p0, Lorg/c/a/e/ac;->l:Z

    iget-boolean v2, p0, Lorg/c/a/e/ac;->e:Z

    if-eq v0, v2, :cond_18

    .line 328
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    iget v2, p0, Lorg/c/a/e/ac;->j:I

    invoke-interface {v0, v2}, Lorg/c/a/c/f;->f(I)I

    .line 329
    sget-object v0, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    iput-object v0, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    .line 331
    iget-object v0, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    const-string v2, "Not masked"

    invoke-interface {v0, v12, v2}, Lorg/c/a/e/ab;->a(ILjava/lang/String;)V

    move v0, v1

    move v2, v3

    goto/16 :goto_5

    .line 335
    :cond_18
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    iget v2, p0, Lorg/c/a/e/ac;->j:I

    invoke-interface {v0, v2}, Lorg/c/a/c/f;->b(I)Lorg/c/a/c/f;

    move-result-object v0

    .line 336
    iget-boolean v2, p0, Lorg/c/a/e/ac;->l:Z

    if-eqz v2, :cond_1a

    .line 338
    invoke-interface {v0}, Lorg/c/a/c/f;->u()[B

    move-result-object v2

    if-nez v2, :cond_19

    .line 339
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->c()Lorg/c/a/c/f;

    move-result-object v0

    .line 340
    :cond_19
    invoke-interface {v0}, Lorg/c/a/c/f;->u()[B

    move-result-object v4

    .line 341
    invoke-interface {v0}, Lorg/c/a/c/f;->q()I

    move-result v5

    .line 342
    invoke-interface {v0}, Lorg/c/a/c/f;->h()I

    move-result v2

    :goto_10
    if-ge v2, v5, :cond_1a

    .line 343
    aget-byte v7, v4, v2

    iget-object v8, p0, Lorg/c/a/e/ac;->m:[B

    iget v9, p0, Lorg/c/a/e/ac;->n:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/c/a/e/ac;->n:I

    rem-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 349
    :cond_1a
    iget-object v2, p0, Lorg/c/a/e/ac;->d:Lorg/c/a/e/ab;

    iget-byte v4, p0, Lorg/c/a/e/ac;->h:B

    iget-byte v5, p0, Lorg/c/a/e/ac;->i:B

    invoke-interface {v2, v4, v5, v0}, Lorg/c/a/e/ab;->a(BBLorg/c/a/c/f;)V

    .line 350
    iput v6, p0, Lorg/c/a/e/ac;->j:I

    .line 351
    sget-object v0, Lorg/c/a/e/ae;->a:Lorg/c/a/e/ae;

    iput-object v0, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    move v0, v1

    move v2, v3

    .line 354
    goto/16 :goto_5

    :cond_1b
    move v3, v0

    .line 358
    goto/16 :goto_6

    :cond_1c
    move v2, v3

    goto/16 :goto_7

    :cond_1d
    move v0, v1

    goto/16 :goto_5

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 364
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/c/a/e/ac;->b:Lorg/c/a/e/k;

    invoke-virtual {v0}, Lorg/c/a/e/k;->a()Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v0, p1}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    .line 370
    invoke-interface {p1}, Lorg/c/a/c/f;->e()V

    .line 372
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/c/a/e/ac;->b:Lorg/c/a/e/k;

    iget-object v1, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/e/k;->a(Lorg/c/a/c/f;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    .line 382
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    const-string v0, "%s@%x state=%s buffer=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/c/a/e/ac;->f:Lorg/c/a/e/ae;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/c/a/e/ac;->g:Lorg/c/a/c/f;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
