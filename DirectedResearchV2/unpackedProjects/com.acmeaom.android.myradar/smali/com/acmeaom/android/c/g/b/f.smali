.class public Lcom/acmeaom/android/c/g/b/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Lcom/acmeaom/android/a/a/c/n;

.field private final e:Lcom/acmeaom/android/a/a/c/l;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:Lcom/acmeaom/android/a/a/a/b;

.field private final n:Lcom/acmeaom/android/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->d:Lcom/acmeaom/android/a/a/c/n;

    .line 85
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->e:Lcom/acmeaom/android/a/a/c/l;

    .line 96
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->m:Lcom/acmeaom/android/a/a/a/b;

    .line 97
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->n:Lcom/acmeaom/android/a/a/a/b;

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    .line 113
    const-string v0, "attribute vec2 texCoord;attribute vec2 vertex;attribute vec2 mapPos;uniform mat4 mapToNdc;uniform mat4 screenToNdc;uniform vec2 size;uniform vec2 anchor;varying vec2 TexCoordOut;void main() {   vec4 projectedPosition = mapToNdc * vec4(mapPos, 0, 1);   vec4 projectedSize = screenToNdc * vec4(size, 0, 1);   vec4 projectedAnchor = vec4(0,0,0,0);   vec4 corner = projectedSize * vec4(vertex, 0, 1);   gl_Position = projectedPosition + vec4(corner.xyz + projectedAnchor.xyz, 0);   TexCoordOut = texCoord;}"

    const v1, 0x8b31

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->b:I

    .line 114
    const-string v0, "uniform sampler2D texture;varying lowp vec2 TexCoordOut;void main() {   gl_FragColor = texture2D(texture, TexCoordOut);}"

    const v1, 0x8b30

    invoke-static {v0, v1}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->c:I

    .line 115
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 116
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    iget v1, p0, Lcom/acmeaom/android/c/g/b/f;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 117
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    iget v1, p0, Lcom/acmeaom/android/c/g/b/f;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "err == %i"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 130
    new-array v0, v4, [I

    .line 131
    iget v1, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 132
    aget v0, v0, v3

    .line 133
    if-nez v0, :cond_1

    .line 134
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_1
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "mapToNdc"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->i:I

    .line 139
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "screenToNdc"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->j:I

    .line 140
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->k:I

    .line 141
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "anchor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->l:I

    .line 143
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->f:I

    .line 144
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "vertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->g:I

    .line 145
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    const-string v1, "mapPos"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/f;->h:I

    .line 146
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 147
    const-string v0, "compiled"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->c:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->b:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->e:Lcom/acmeaom/android/a/a/c/l;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->a()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 102
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->d:Lcom/acmeaom/android/a/a/c/n;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/n;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 103
    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->h:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->g:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->f:I

    .line 104
    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->l:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->k:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->j:I

    iput v2, p0, Lcom/acmeaom/android/c/g/b/f;->i:I

    .line 105
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 107
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/f;->g()V

    .line 108
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 157
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p1}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 159
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->i:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/f;->m:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, p2}, Lcom/acmeaom/android/a/g/u;->b(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 168
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->j:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/f;->n:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->d()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 170
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 171
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->e:Lcom/acmeaom/android/a/a/c/l;

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/a/c/o;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->e:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/l;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 180
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->l:I

    iget v1, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 182
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 183
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->d:Lcom/acmeaom/android/a/a/c/n;

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/a/c/o;->a(Lcom/acmeaom/android/a/a/c/n;Lcom/acmeaom/android/a/a/c/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/f;->d:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 188
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->k:I

    iget v1, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 191
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->a:I

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/acmeaom/android/c/g/b/f;->f:I

    return v0
.end method
