.class public abstract Lcom/acmeaom/android/c/g/c/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/c/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[Lcom/acmeaom/android/a/g/n;

.field private f:[S

.field private g:I


# direct methods
.method public constructor <init>(I[Lcom/acmeaom/android/a/g/n;[S)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lcom/acmeaom/android/c/g/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad shape data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/c/g/c/d;-><init>(Lcom/acmeaom/android/c/g/c/c;Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput p1, p0, Lcom/acmeaom/android/c/g/c/c;->b:I

    .line 56
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->a()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/g/c/c;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 57
    iput-object p2, p0, Lcom/acmeaom/android/c/g/c/c;->e:[Lcom/acmeaom/android/a/g/n;

    .line 58
    iput-object p3, p0, Lcom/acmeaom/android/c/g/c/c;->f:[S

    .line 59
    return-void
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    .line 149
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)V
    .locals 6

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 163
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 165
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 166
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    .line 168
    :cond_0
    const v0, 0x8892

    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 169
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/c;->e:[Lcom/acmeaom/android/a/g/n;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/c;->e:[Lcom/acmeaom/android/a/g/n;

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/g/n;->a([Lcom/acmeaom/android/a/g/n;Ljava/nio/FloatBuffer;)V

    .line 171
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    const v1, 0x8892

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const v3, 0x88e4

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 174
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 176
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 177
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    .line 179
    :cond_1
    const v0, 0x8893

    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 180
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c/c;->f:[S

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/c;->f:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 183
    const v1, 0x8893

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x88e4

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 186
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 187
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 189
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/acmeaom/android/c/g/a;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 193
    const v0, 0x8892

    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 194
    const v0, 0x8893

    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 195
    iget-object v0, p1, Lcom/acmeaom/android/c/g/a;->f:Lcom/acmeaom/android/c/g/b/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->d()I

    move-result v0

    .line 196
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 197
    const/4 v1, 0x3

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 198
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 199
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/acmeaom/android/c/g/c/c;->g:I

    .line 102
    return-void
.end method

.method public declared-synchronized a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 72
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {p5}, Lcom/acmeaom/android/c/g/a;->b()Lcom/acmeaom/android/c/g/b/c;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 77
    invoke-direct {p0, p5}, Lcom/acmeaom/android/c/g/c/c;->c(Lcom/acmeaom/android/c/g/a;)V

    .line 78
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 82
    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->a:I

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/b/c;->a(I)V

    .line 84
    invoke-virtual {v0, p1, p3}, Lcom/acmeaom/android/c/g/b/c;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 85
    iget v1, p0, Lcom/acmeaom/android/c/g/c/c;->b:I

    iget-object v2, p0, Lcom/acmeaom/android/c/g/c/c;->f:[S

    array-length v2, v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 87
    invoke-virtual {v0, p2, p3}, Lcom/acmeaom/android/c/g/b/c;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 88
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->b:I

    iget-object v1, p0, Lcom/acmeaom/android/c/g/c/c;->f:[S

    array-length v1, v1

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 89
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/acmeaom/android/a/f/l;)V
    .locals 1

    .prologue
    .line 217
    iget v0, p1, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/g/c/c;->a(I)V

    .line 218
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/i/d;)V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/g/c/c;->b(I)V

    .line 214
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/g/a;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 116
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->d:I

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/a;->b()Lcom/acmeaom/android/c/g/b/c;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b/c;->d()I

    move-result v0

    .line 119
    invoke-direct {p0, v0}, Lcom/acmeaom/android/c/g/c/c;->c(I)V

    .line 121
    :cond_1
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 206
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 209
    :cond_0
    iput p1, p0, Lcom/acmeaom/android/c/g/c/c;->a:I

    .line 210
    return-void
.end method

.method public b(Lcom/acmeaom/android/c/g/a;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/c/c;->b()V

    .line 134
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/acmeaom/android/c/g/c/c;->g:I

    return v0
.end method
