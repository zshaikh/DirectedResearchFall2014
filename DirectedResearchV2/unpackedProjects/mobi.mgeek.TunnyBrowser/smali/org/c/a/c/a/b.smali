.class public Lorg/c/a/c/a/b;
.super Ljava/lang/Object;
.source "StreamEndPoint.java"

# interfaces
.implements Lorg/c/a/c/s;


# instance fields
.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field f:I

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/c/f;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 126
    iget-boolean v2, p0, Lorg/c/a/c/a/b;->g:Z

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Lorg/c/a/c/f;->s()I

    move-result v2

    .line 132
    if-gtz v2, :cond_3

    .line 134
    invoke-interface {p1}, Lorg/c/a/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    invoke-interface {p1, v1, v2}, Lorg/c/a/c/f;->a(Ljava/io/InputStream;I)I

    move-result v1

    .line 142
    if-gez v1, :cond_4

    .line 143
    invoke-virtual {p0}, Lorg/c/a/c/a/b;->g()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {p0}, Lorg/c/a/c/a/b;->d()V

    goto :goto_0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    if-eqz p1, :cond_1

    .line 179
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v1

    .line 180
    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lorg/c/a/c/a/b;->b(Lorg/c/a/c/f;)I

    move-result v0

    .line 184
    if-ge v0, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-eqz p2, :cond_3

    .line 191
    invoke-interface {p2}, Lorg/c/a/c/f;->m()I

    move-result v2

    .line 192
    if-lez v2, :cond_3

    .line 194
    invoke-virtual {p0, p2}, Lorg/c/a/c/a/b;->b(Lorg/c/a/c/f;)I

    move-result v1

    .line 195
    if-gez v1, :cond_2

    .line 196
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 197
    :cond_2
    add-int/2addr v0, v1

    .line 198
    if-lt v1, v2, :cond_0

    .line 203
    :cond_3
    if-eqz p3, :cond_0

    .line 205
    invoke-interface {p3}, Lorg/c/a/c/f;->m()I

    move-result v1

    .line 206
    if-lez v1, :cond_0

    .line 208
    invoke-virtual {p0, p3}, Lorg/c/a/c/a/b;->b(Lorg/c/a/c/f;)I

    move-result v1

    .line 209
    if-gez v1, :cond_4

    .line 210
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 211
    :cond_4
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 322
    iput p1, p0, Lorg/c/a/c/a/b;->f:I

    .line 323
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/c/a/c/f;)I
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/c/a/c/a/b;->h:Z

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, -0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v0

    .line 163
    if-lez v0, :cond_3

    .line 164
    iget-object v1, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    invoke-interface {p1, v1}, Lorg/c/a/c/f;->a(Ljava/io/OutputStream;)V

    .line 165
    :cond_3
    invoke-interface {p1}, Lorg/c/a/c/f;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-interface {p1}, Lorg/c/a/c/f;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/a/b;->h:Z

    .line 81
    iget-boolean v0, p0, Lorg/c/a/c/a/b;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/c/a/c/a/b;->h:Z

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/a/b;->g:Z

    .line 93
    iget-boolean v0, p0, Lorg/c/a/c/a/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/c/a/c/a/b;->g:Z

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_0
    iput-object v1, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    .line 110
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 112
    :cond_1
    iput-object v1, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    .line 113
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/c/a/c/a/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/c/a/c/a/b;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 311
    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lorg/c/a/c/a/b;->f:I

    return v0
.end method
