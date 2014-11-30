.class public Lcom/acmeaom/android/c/g/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private final e:[F

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/acmeaom/android/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    .line 68
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->i:Lcom/acmeaom/android/a/a/a/b;

    return-void
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    .line 119
    const-string v2, "attribute vec3 position;uniform mat4 projection;void main() {   vec4 homogeneous = vec4(position, 1);   gl_Position = projection * homogeneous; }"

    const v3, 0x8b31

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/c;->a:I

    .line 120
    const-string v2, "uniform lowp vec4 color;void main() {   gl_FragColor = color;}"

    const v3, 0x8b30

    invoke-static {v2, v3}, Lcom/acmeaom/android/c/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/acmeaom/android/c/g/b/c;->b:I

    .line 121
    iget v2, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/c;->a:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 122
    iget v2, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    iget v3, p0, Lcom/acmeaom/android/c/g/b/c;->b:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 123
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 126
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 127
    if-eqz v2, :cond_0

    .line 128
    const-string v3, "err == %i"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    iget v2, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 132
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 134
    new-array v2, v1, [I

    .line 135
    iget v3, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    const v4, 0x8b82

    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 136
    aget v2, v2, v0

    .line 137
    if-nez v2, :cond_1

    .line 138
    const-string v2, "%s"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 142
    iget v2, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 143
    if-gez v2, :cond_2

    .line 156
    :goto_0
    return v0

    .line 146
    :cond_2
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 147
    iput v2, p0, Lcom/acmeaom/android/c/g/b/c;->f:I

    .line 149
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    const-string v2, "projection"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/c;->g:I

    .line 151
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 152
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    const-string v2, "color"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/c;->h:I

    .line 154
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    move v0, v1

    .line 156
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->b:I

    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->a:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/g/b/c;->d:F

    .line 73
    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->h:I

    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->g:I

    iput v1, p0, Lcom/acmeaom/android/c/g/b/c;->f:I

    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->i:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->b()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 77
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/c;->e()Z

    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 81
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/acmeaom/android/c/g/b/c;->d:F

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 113
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x437f0000

    .line 93
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v4

    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v5

    .line 95
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    shr-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 98
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 101
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->h:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b/c;->e:[F

    invoke-static {v0, v5, v1, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 103
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 104
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b/c;->i:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 170
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->g:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/a/b;->c()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 171
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 174
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->c:I

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/acmeaom/android/c/g/b/c;->f:I

    return v0
.end method
