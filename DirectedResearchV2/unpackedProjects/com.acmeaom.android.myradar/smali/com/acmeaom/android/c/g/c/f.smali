.class public Lcom/acmeaom/android/c/g/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/a;


# static fields
.field private static final q:[Lcom/acmeaom/android/c/g/c/g;

.field private static final r:[S


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/c/n;

.field private final b:Lcom/acmeaom/android/a/a/c/l;

.field private final c:Ljava/util/ArrayList;

.field private d:Lcom/acmeaom/android/a/a/c/d;

.field private e:Lcom/acmeaom/android/a/a/b/i;

.field private f:Lcom/acmeaom/android/a/a/b/i;

.field private final g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/acmeaom/android/c/b;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acmeaom/android/c/g/c/g;

    const/4 v1, 0x0

    new-instance v2, Lcom/acmeaom/android/c/g/c/g;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-direct {v2, v3, v4, v5}, Lcom/acmeaom/android/c/g/c/g;-><init>([F[F[F)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/acmeaom/android/c/g/c/g;

    new-array v3, v6, [F

    fill-array-data v3, :array_3

    new-array v4, v6, [F

    fill-array-data v4, :array_4

    new-array v5, v6, [F

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/acmeaom/android/c/g/c/g;-><init>([F[F[F)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/acmeaom/android/c/g/c/g;

    new-array v2, v6, [F

    fill-array-data v2, :array_6

    new-array v3, v6, [F

    fill-array-data v3, :array_7

    new-array v4, v6, [F

    fill-array-data v4, :array_8

    invoke-direct {v1, v2, v3, v4}, Lcom/acmeaom/android/c/g/c/g;-><init>([F[F[F)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/acmeaom/android/c/g/c/g;

    new-array v3, v6, [F

    fill-array-data v3, :array_9

    new-array v4, v6, [F

    fill-array-data v4, :array_a

    new-array v5, v6, [F

    fill-array-data v5, :array_b

    invoke-direct {v2, v3, v4, v5}, Lcom/acmeaom/android/c/g/c/g;-><init>([F[F[F)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/c/g/c/f;->q:[Lcom/acmeaom/android/c/g/c/g;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_c

    sput-object v0, Lcom/acmeaom/android/c/g/c/f;->r:[S

    return-void

    .line 105
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000
        -0x41000000
    .end array-data

    :array_2
    .array-data 4
        0x3f7fbe77
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f000000
        0x3f000000
    .end array-data

    :array_5
    .array-data 4
        0x3f7fbe77
        0x3f7fbe77
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        -0x41000000
        0x3f000000
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f7fbe77
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        -0x41000000
        -0x41000000
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 112
    :array_c
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x0s
    .end array-data
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/d;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 53
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->b:Lcom/acmeaom/android/a/a/c/l;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->c:Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c/f;->d:Lcom/acmeaom/android/a/a/c/d;

    .line 119
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    .line 120
    new-instance v2, Lcom/acmeaom/android/c/d/d;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v2, v0}, Lcom/acmeaom/android/c/d/d;-><init>(Lcom/acmeaom/android/a/a/d/b;)V

    .line 121
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/a/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->e:Lcom/acmeaom/android/a/a/b/i;

    .line 125
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/c/f;->b(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/a/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->f:Lcom/acmeaom/android/a/a/b/i;

    .line 126
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->f:Lcom/acmeaom/android/a/a/b/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/i;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->g:I

    .line 127
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/a/b/i;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 132
    mul-int/lit8 v0, v3, 0x4

    new-array v4, v0, [Lcom/acmeaom/android/c/g/c/g;

    move v2, v1

    .line 134
    :goto_0
    if-ge v2, v3, :cond_1

    .line 135
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/d/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/d;->a()Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v5, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 136
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/d/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/d;->a()Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    iget v6, v0, Lcom/acmeaom/android/a/g/m;->e:F

    move v0, v1

    .line 137
    :goto_1
    const/4 v7, 0x4

    if-ge v0, v7, :cond_0

    .line 138
    sget-object v7, Lcom/acmeaom/android/c/g/c/f;->q:[Lcom/acmeaom/android/c/g/c/g;

    aget-object v7, v7, v0

    .line 139
    new-instance v8, Lcom/acmeaom/android/c/g/c/g;

    invoke-static {v7}, Lcom/acmeaom/android/c/g/c/g;->a(Lcom/acmeaom/android/c/g/c/g;)[F

    move-result-object v9

    invoke-static {v7}, Lcom/acmeaom/android/c/g/c/g;->b(Lcom/acmeaom/android/c/g/c/g;)[F

    move-result-object v10

    invoke-static {v7}, Lcom/acmeaom/android/c/g/c/g;->c(Lcom/acmeaom/android/c/g/c/g;)[F

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lcom/acmeaom/android/c/g/c/g;-><init>([F[F[F)V

    .line 140
    invoke-static {v8}, Lcom/acmeaom/android/c/g/c/g;->a(Lcom/acmeaom/android/c/g/c/g;)[F

    move-result-object v7

    aput v5, v7, v1

    .line 141
    invoke-static {v8}, Lcom/acmeaom/android/c/g/c/g;->a(Lcom/acmeaom/android/c/g/c/g;)[F

    move-result-object v7

    const/4 v9, 0x1

    aput v6, v7, v9

    .line 142
    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v0

    .line 143
    aput-object v8, v4, v7

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/a/b/i;

    invoke-static {v4}, Lcom/acmeaom/android/c/g/c/g;->a([Lcom/acmeaom/android/c/g/c/g;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/i;-><init>(Ljava/nio/FloatBuffer;)V

    return-object v0
.end method

.method private a(Lcom/acmeaom/android/c/g/b/f;)V
    .locals 8

    .prologue
    const v7, 0x88e4

    const v6, 0x8893

    const v5, 0x8892

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 257
    new-array v0, v4, [I

    .line 259
    iget v1, p0, Lcom/acmeaom/android/c/g/c/f;->h:I

    if-nez v1, :cond_0

    .line 260
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 261
    aget v1, v0, v3

    iput v1, p0, Lcom/acmeaom/android/c/g/c/f;->h:I

    .line 263
    :cond_0
    iget v1, p0, Lcom/acmeaom/android/c/g/c/f;->h:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 264
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/f;->e:Lcom/acmeaom/android/a/a/b/i;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/i;->b()I

    move-result v1

    iget-object v2, p0, Lcom/acmeaom/android/c/g/c/f;->e:Lcom/acmeaom/android/a/a/b/i;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/i;->c()Ljava/nio/Buffer;

    move-result-object v2

    invoke-static {v5, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 266
    iget v1, p0, Lcom/acmeaom/android/c/g/c/f;->i:I

    if-nez v1, :cond_1

    .line 267
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 268
    aget v0, v0, v3

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->i:I

    .line 271
    :cond_1
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->i:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 272
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->f:Lcom/acmeaom/android/a/a/b/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/i;->b()I

    move-result v0

    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/f;->f:Lcom/acmeaom/android/a/a/b/i;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/i;->c()Ljava/nio/Buffer;

    move-result-object v1

    invoke-static {v6, v0, v1, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 274
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/b/f;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->m:I

    .line 275
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/b/f;->e()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->n:I

    .line 276
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/b/f;->f()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->o:I

    .line 277
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/c/f;->b()V

    .line 279
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 280
    return-void
.end method

.method private b(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/a/b/i;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 153
    mul-int/lit8 v0, v3, 0x6

    .line 155
    new-array v4, v0, [S

    move v2, v1

    .line 157
    :goto_0
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 158
    :goto_1
    const/4 v5, 0x6

    if-ge v0, v5, :cond_0

    .line 159
    mul-int/lit8 v5, v2, 0x4

    .line 160
    mul-int/lit8 v6, v2, 0x6

    add-int/2addr v6, v0

    sget-object v7, Lcom/acmeaom/android/c/g/c/f;->r:[S

    aget-short v7, v7, v0

    add-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v4, v6

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/a/b/i;

    invoke-direct {v0, v4}, Lcom/acmeaom/android/a/a/b/i;-><init>([S)V

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 283
    const v0, 0x8892

    iget v4, p0, Lcom/acmeaom/android/c/g/c/f;->h:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 284
    const v0, 0x8893

    iget v4, p0, Lcom/acmeaom/android/c/g/c/f;->i:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 286
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 287
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->m:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 288
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 289
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 290
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 291
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 292
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 294
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->m:I

    invoke-static {}, Lcom/acmeaom/android/c/g/c/g;->a()I

    move-result v4

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 295
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 296
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->n:I

    invoke-static {}, Lcom/acmeaom/android/c/g/c/g;->a()I

    move-result v4

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 298
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 299
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->o:I

    invoke-static {}, Lcom/acmeaom/android/c/g/c/g;->a()I

    move-result v4

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 301
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 302
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lcom/acmeaom/android/c/g/c/f;->k:I

    .line 306
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 6

    .prologue
    const/16 v5, 0x1403

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 176
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->i:I

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 181
    invoke-virtual {p5}, Lcom/acmeaom/android/c/g/a;->i()Lcom/acmeaom/android/c/g/b/f;

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/c/f;->b()V

    .line 185
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 187
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/f;->a:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/f;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 188
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/f;->b:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/f;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 189
    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/f;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 190
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 192
    const/16 v1, 0xde1

    iget v2, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 193
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 195
    invoke-virtual {v0, p1, p3}, Lcom/acmeaom/android/c/g/b/f;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 196
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 197
    iget v1, p0, Lcom/acmeaom/android/c/g/c/f;->g:I

    if-gez v1, :cond_2

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 198
    :cond_2
    iget v1, p0, Lcom/acmeaom/android/c/g/c/f;->g:I

    invoke-static {v4, v1, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 199
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 200
    invoke-virtual {v0, p2, p3}, Lcom/acmeaom/android/c/g/b/f;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 201
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->g:I

    invoke-static {v4, v0, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 202
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->b:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 336
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->a:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 310
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/b;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c/f;->l:Lcom/acmeaom/android/c/b;

    .line 332
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 208
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/a;->i()Lcom/acmeaom/android/c/g/b/f;

    move-result-object v0

    .line 209
    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/c/g/b/f;)V

    .line 210
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->d:Lcom/acmeaom/android/a/a/c/d;

    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/f;->l:Lcom/acmeaom/android/c/b;

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/g/a;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/c/b;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/c/f;->d:Lcom/acmeaom/android/a/a/c/d;

    .line 212
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 213
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/c/f;->p:Z

    return v0
.end method

.method public b(Lcom/acmeaom/android/c/g/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 224
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    if-eqz v0, :cond_0

    .line 225
    new-array v0, v2, [I

    .line 226
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 227
    aget v0, v0, v1

    iput v0, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    .line 228
    iput v1, p0, Lcom/acmeaom/android/c/g/c/f;->j:I

    .line 230
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 231
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/acmeaom/android/c/g/c/f;->k:I

    return v0
.end method
