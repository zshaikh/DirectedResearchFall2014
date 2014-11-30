.class public Lcom/acmeaom/android/c/g/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[Lcom/acmeaom/android/c/g/b/e;


# instance fields
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

.field private m:I

.field private n:I

.field private o:I

.field private final p:Lcom/acmeaom/android/a/a/a/b;

.field private final q:Lcom/acmeaom/android/a/a/a/b;

.field private final r:Lcom/acmeaom/android/a/a/a/b;

.field private final s:Lcom/acmeaom/android/a/a/c/n;

.field private final t:Lcom/acmeaom/android/a/a/c/l;

.field private final u:Lcom/acmeaom/android/a/g/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acmeaom/android/c/g/b/e;

    const/4 v1, 0x0

    new-instance v2, Lcom/acmeaom/android/c/g/b/e;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/e;-><init>([F[F)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/acmeaom/android/c/g/b/e;

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/e;-><init>([F[F)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/acmeaom/android/c/g/b/e;

    new-array v2, v5, [F

    fill-array-data v2, :array_4

    new-array v3, v5, [F

    fill-array-data v3, :array_5

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/c/g/b/e;-><init>([F[F)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Lcom/acmeaom/android/c/g/b/e;

    new-array v3, v5, [F

    fill-array-data v3, :array_6

    new-array v4, v5, [F

    fill-array-data v4, :array_7

    invoke-direct {v2, v3, v4}, Lcom/acmeaom/android/c/g/b/e;-><init>([F[F)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/c/g/b/d;->a:[Lcom/acmeaom/android/c/g/b/e;

    return-void

    :array_0
    .array-data 4
        0x3f000000
        -0x41000000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000
        0x3f000000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x3f800000
    .end array-data

    :array_4
    .array-data 4
        -0x41000000
        0x3f000000
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_6
    .array-data 4
        -0x41000000
        -0x41000000
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->b:[S

    .line 136
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->p:Lcom/acmeaom/android/a/a/a/b;

    .line 137
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->q:Lcom/acmeaom/android/a/a/a/b;

    .line 138
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->r:Lcom/acmeaom/android/a/a/a/b;

    .line 140
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->s:Lcom/acmeaom/android/a/a/c/n;

    .line 141
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->t:Lcom/acmeaom/android/a/a/c/l;

    .line 142
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->u:Lcom/acmeaom/android/a/g/m;

    .line 144
    return-void

    .line 106
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x0s
    .end array-data
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 234
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    .line 241
    const-string v2, "attribute vec2 textCoordIn;attribute vec2 vertex;uniform vec2 position;uniform mat4 mapToNdc;uniform mat4 screenToNdc;uniform mat4 animation;uniform vec2 size;uniform vec2 anchor;varying vec2 TexCoordOut; void main() {    vec4 projectedPosition = mapToNdc * vec4(position, 0, 1);   vec4 animatedVertex = animation * vec4(vertex, 0, 1);   animatedVertex = vec4(vertex, 0, 1);   vec4 projectedSize = screenToNdc * vec4(size, 0, 1);   vec4 projectedAnchor = vec4(0,0,0,0);   vec4 corner = projectedSize * animatedVertex;   gl_Position = projectedPosition + vec4(corner.xyz + projectedAnchor.xyz, 0);   TexCoordOut = textCoordIn;}"

    const v3, 0x8b31

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->d:I

    .line 242
    const-string v2, "uniform sampler2D texture;varying lowp vec2 TexCoordOut; void main() {   gl_FragColor = texture2D(texture, TexCoordOut);}"

    const v3, 0x8b30

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->e:I

    .line 243
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/d;->d:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 244
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/d;->e:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 248
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 249
    if-eqz v2, :cond_2

    .line 250
    const-string v3, "err == %i"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 255
    new-array v2, v1, [I

    .line 256
    iget v3, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const v4, 0x8b82

    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 257
    aget v2, v2, v0

    .line 258
    if-nez v2, :cond_3

    .line 259
    const-string v2, "%s"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_3
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "mapToNdc"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->h:I

    .line 263
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "screenToNdc"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->i:I

    .line 264
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "animation"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->j:I

    .line 265
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->k:I

    .line 266
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "size"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->l:I

    .line 267
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "anchor"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->m:I

    .line 270
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 271
    if-ltz v2, :cond_0

    .line 274
    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->o:I

    .line 276
    iget v2, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    const-string v3, "textCoordIn"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 277
    if-ltz v2, :cond_0

    .line 280
    iput v2, p0, Lcom/acmeaom/android/c/g/b/d;->n:I

    .line 281
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    move v0, v1

    .line 283
    goto/16 :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const v10, 0x88e4

    const v9, 0x8893

    const v8, 0x8892

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 289
    new-array v2, v7, [I

    .line 290
    invoke-static {v7, v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 291
    aget v1, v2, v0

    iput v1, p0, Lcom/acmeaom/android/c/g/b/d;->f:I

    .line 292
    iget v1, p0, Lcom/acmeaom/android/c/g/b/d;->f:I

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 293
    sget-object v1, Lcom/acmeaom/android/c/g/b/d;->a:[Lcom/acmeaom/android/c/g/b/e;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 294
    sget-object v4, Lcom/acmeaom/android/c/g/b/d;->a:[Lcom/acmeaom/android/c/g/b/e;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    invoke-virtual {v6, v3}, Lcom/acmeaom/android/c/g/b/e;->a(Ljava/nio/FloatBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 296
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v8, v1, v3, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 299
    invoke-static {v7, v2, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 300
    aget v1, v2, v0

    iput v1, p0, Lcom/acmeaom/android/c/g/b/d;->g:I

    .line 301
    iget v1, p0, Lcom/acmeaom/android/c/g/b/d;->g:I

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 302
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->b:[S

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b/d;->b:[S

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-short v4, v2, v0

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 305
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->b:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 307
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/d;->g()V

    .line 308
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 309
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 312
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 313
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 315
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->o:I

    invoke-static {}, Lcom/acmeaom/android/c/g/b/e;->a()I

    move-result v4

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 318
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->n:I

    invoke-static {}, Lcom/acmeaom/android/c/g/b/e;->a()I

    move-result v4

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 319
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->g:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->f:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->e:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->d:I

    .line 167
    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->k:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->j:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->i:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->h:I

    .line 168
    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->o:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->n:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->m:I

    iput v0, p0, Lcom/acmeaom/android/c/g/b/d;->l:I

    .line 170
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->s:Lcom/acmeaom/android/a/a/c/n;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/n;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 171
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->t:Lcom/acmeaom/android/a/a/c/l;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->a()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 172
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->u:Lcom/acmeaom/android/a/g/m;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->a()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 173
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 174
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 175
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 177
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/d;->f()V

    .line 182
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 188
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 189
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 193
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 227
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->j:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 228
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 229
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->q:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 231
    :cond_0
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 327
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p1}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 329
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->h:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->p:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 333
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p2}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 339
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->i:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->d()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 343
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 344
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 3

    .prologue
    .line 196
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->t:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->t:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->t:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 198
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 199
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->m:I

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 200
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 202
    :cond_1
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->s:Lcom/acmeaom/android/a/a/c/n;

    invoke-static {v0, p1}, Lcom/acmeaom/android/a/a/c/o;->a(Lcom/acmeaom/android/a/a/c/n;Lcom/acmeaom/android/a/a/c/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->s:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 207
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 208
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->l:I

    iget v1, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 209
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 212
    :cond_0
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/m;)V
    .locals 3

    .prologue
    .line 215
    iget v0, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->u:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/acmeaom/android/a/g/m;->e:F

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/d;->u:Lcom/acmeaom/android/a/g/m;

    iget v1, v1, Lcom/acmeaom/android/a/g/m;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/d;->u:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 217
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 218
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->k:I

    iget v1, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 219
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 222
    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/acmeaom/android/c/g/b/d;->c:I

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 348
    const v0, 0x8892

    iget v1, p0, Lcom/acmeaom/android/c/g/b/d;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 349
    const v0, 0x8893

    iget v1, p0, Lcom/acmeaom/android/c/g/b/d;->g:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 350
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/d;->g()V

    .line 351
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 355
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 356
    return-void
.end method
