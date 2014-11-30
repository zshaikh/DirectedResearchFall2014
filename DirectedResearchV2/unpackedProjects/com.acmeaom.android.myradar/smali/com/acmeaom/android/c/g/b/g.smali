.class public Lcom/acmeaom/android/c/g/b/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:[Lcom/acmeaom/android/c/g/b/h;

.field private final b:[S

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:Lcom/acmeaom/android/a/a/a/b;

.field private final n:Lcom/acmeaom/android/a/a/a/b;

.field private o:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acmeaom/android/c/g/b/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/acmeaom/android/c/g/b/h;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/h;-><init>([F[F)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/acmeaom/android/c/g/b/h;

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/h;-><init>([F[F)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/acmeaom/android/c/g/b/h;

    new-array v2, v5, [F

    fill-array-data v2, :array_4

    new-array v3, v5, [F

    fill-array-data v3, :array_5

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/c/g/b/h;-><init>([F[F)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Lcom/acmeaom/android/c/g/b/h;

    new-array v3, v5, [F

    fill-array-data v3, :array_6

    new-array v4, v5, [F

    fill-array-data v4, :array_7

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/h;-><init>([F[F)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->a:[Lcom/acmeaom/android/c/g/b/h;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->b:[S

    .line 115
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->m:Lcom/acmeaom/android/a/a/a/b;

    .line 116
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->n:Lcom/acmeaom/android/a/a/a/b;

    .line 120
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x3f800000
        -0x40800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x3f800000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x3f800000
    .end array-data

    :array_4
    .array-data 4
        -0x40800000
        0x3f800000
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_6
    .array-data 4
        -0x40800000
        -0x40800000
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 88
    :array_8
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x0s
    .end array-data
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    if-eqz v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    .line 163
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b/g;->d()Ljava/lang/String;

    move-result-object v2

    const v3, 0x8b31

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->c:I

    .line 164
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b/g;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0x8b30

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->d:I

    .line 165
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/g;->c:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 166
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/g;->d:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 170
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 171
    if-eqz v2, :cond_2

    .line 172
    const-string v3, "err == %i"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_2
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 177
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 178
    iget v3, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const v4, 0x8b82

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 179
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    .line 181
    if-nez v2, :cond_3

    .line 182
    const-string v2, "%s"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_3
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const-string v3, "projection"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->h:I

    .line 185
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const-string v3, "transform"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->i:I

    .line 186
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const-string v3, "opacity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->j:I

    .line 189
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 190
    if-ltz v2, :cond_0

    .line 193
    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->l:I

    .line 195
    iget v2, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    const-string v3, "textCoordIn"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 196
    if-ltz v2, :cond_0

    .line 199
    iput v2, p0, Lcom/acmeaom/android/c/g/b/g;->k:I

    move v0, v1

    .line 201
    goto/16 :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 246
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 247
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->l:I

    invoke-static {}, Lcom/acmeaom/android/c/g/b/h;->a()I

    move-result v4

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 252
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->k:I

    invoke-static {}, Lcom/acmeaom/android/c/g/b/h;->a()I

    move-result v4

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 253
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "uniform sampler2D texture;uniform lowp float opacity;varying lowp vec2 TexCoordOut;void main() {   gl_FragColor = texture2D(texture, TexCoordOut) * opacity;}"

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->o:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    iput p1, p0, Lcom/acmeaom/android/c/g/b/g;->o:F

    .line 304
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->j:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 281
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 293
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->i:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 295
    :cond_0
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p1}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p1}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 261
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->h:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->g:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->f:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->d:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->c:I

    .line 142
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/g;->h()Z

    move-result v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b/g;->e()V

    .line 149
    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/acmeaom/android/c/g/b/g;->o:F

    .line 150
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/acmeaom/android/c/g/b/g;->e:I

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "attribute vec2 textCoordIn;attribute vec2 vertex;uniform mat4 projection;uniform mat4 transform;varying vec2 TexCoordOut;void main() {   gl_Position = projection * transform * vec4(vertex, 0, 1);   TexCoordOut = textCoordIn;}"

    return-object v0
.end method

.method e()V
    .locals 11

    .prologue
    const v10, 0x88e4

    const v9, 0x8893

    const v8, 0x8892

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 218
    new-array v2, v7, [I

    .line 219
    invoke-static {v7, v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 220
    aget v1, v2, v0

    iput v1, p0, Lcom/acmeaom/android/c/g/b/g;->f:I

    .line 222
    iget v1, p0, Lcom/acmeaom/android/c/g/b/g;->f:I

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 223
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/g;->a:[Lcom/acmeaom/android/c/g/b/h;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 224
    iget-object v4, p0, Lcom/acmeaom/android/c/g/b/g;->a:[Lcom/acmeaom/android/c/g/b/h;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 225
    invoke-virtual {v6, v3}, Lcom/acmeaom/android/c/g/b/h;->a(Ljava/nio/FloatBuffer;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v8, v1, v3, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 231
    invoke-static {v7, v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 232
    aget v1, v2, v0

    iput v1, p0, Lcom/acmeaom/android/c/g/b/g;->g:I

    .line 234
    iget v1, p0, Lcom/acmeaom/android/c/g/b/g;->g:I

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 235
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/g;->b:[S

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b/g;->b:[S

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-short v4, v2, v0

    .line 237
    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 240
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/g;->b:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 242
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/g;->i()V

    .line 243
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 270
    const v0, 0x8892

    iget v1, p0, Lcom/acmeaom/android/c/g/b/g;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 271
    const v0, 0x8893

    iget v1, p0, Lcom/acmeaom/android/c/g/b/g;->g:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 272
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/g;->i()V

    .line 273
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 308
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 309
    return-void
.end method
