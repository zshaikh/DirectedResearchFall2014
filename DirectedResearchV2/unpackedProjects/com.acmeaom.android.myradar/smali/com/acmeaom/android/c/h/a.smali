.class public abstract Lcom/acmeaom/android/c/h/a;
.super Lcom/acmeaom/android/c/h/k;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/b/n;

.field private g:Lcom/acmeaom/android/a/g/a;

.field private h:I

.field private i:Lcom/acmeaom/android/c/h/b;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/h/k;-><init>(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)V

    .line 40
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/h/a;->a:Lcom/acmeaom/android/a/a/b/n;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/h/a;->h:I

    .line 44
    sget-object v0, Lcom/acmeaom/android/c/h/b;->a:Lcom/acmeaom/android/c/h/b;

    iput-object v0, p0, Lcom/acmeaom/android/c/h/a;->i:Lcom/acmeaom/android/c/h/b;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/c/h/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/acmeaom/android/c/h/a;->h:I

    .line 74
    iget-object v1, p0, Lcom/acmeaom/android/c/h/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, p5}, Lcom/acmeaom/android/c/h/a;->c(Lcom/acmeaom/android/c/g/a;)Lcom/acmeaom/android/c/g/b/g;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/b/g;->a(I)V

    .line 85
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/c/h/a;->b:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/b/g;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 87
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 88
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/a;->j()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/b/g;->a(F)V

    .line 89
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 91
    invoke-virtual {v1, p1, p3}, Lcom/acmeaom/android/c/g/b/g;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 92
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 93
    invoke-virtual {v1}, Lcom/acmeaom/android/c/g/b/g;->g()V

    .line 94
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 95
    invoke-virtual {v1, p2, p3}, Lcom/acmeaom/android/c/g/b/g;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V

    .line 96
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 97
    invoke-virtual {v1}, Lcom/acmeaom/android/c/g/b/g;->g()V

    .line 98
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/c/g/a;)V
    .locals 7

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2601

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 141
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 142
    iget-object v0, p0, Lcom/acmeaom/android/c/h/a;->g:Lcom/acmeaom/android/a/g/a;

    .line 143
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget v1, p0, Lcom/acmeaom/android/c/h/a;->h:I

    if-nez v1, :cond_0

    .line 155
    new-array v1, v2, [I

    .line 156
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 157
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 158
    aget v1, v1, v4

    .line 159
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 161
    const/16 v2, 0x2800

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 162
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 163
    const/16 v2, 0x2801

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 164
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 165
    const/16 v2, 0x2802

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 166
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 167
    const/16 v2, 0x2803

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 168
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 171
    iget-object v2, p0, Lcom/acmeaom/android/c/h/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 172
    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v4, v2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 173
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 174
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 175
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 176
    iput v1, p0, Lcom/acmeaom/android/c/h/a;->h:I

    .line 177
    iget-object v1, p0, Lcom/acmeaom/android/c/h/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 179
    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/a;->b()V

    .line 180
    invoke-virtual {p0}, Lcom/acmeaom/android/c/h/a;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/h/l;->f:Lcom/acmeaom/android/c/h/l;

    if-ne v0, v1, :cond_0

    .line 181
    sget-object v0, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/a;->a(Lcom/acmeaom/android/c/h/l;)V

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/c/h/b;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/acmeaom/android/c/h/a;->i:Lcom/acmeaom/android/c/h/b;

    .line 187
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/acmeaom/android/a/g/a;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/acmeaom/android/c/h/a;->g:Lcom/acmeaom/android/a/g/a;

    if-eqz v0, :cond_0

    const-string v0, "unexpected overwritten bitmap"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/c/h/a;->g:Lcom/acmeaom/android/a/g/a;

    .line 132
    iget-object v0, p0, Lcom/acmeaom/android/c/h/a;->e:Lcom/acmeaom/android/c/c/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->k()Lcom/acmeaom/android/c/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/c/g/b;->c(Lcom/acmeaom/android/c/a;)V

    .line 133
    return-void
.end method

.method public b(Lcom/acmeaom/android/c/g/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 111
    iget v0, p0, Lcom/acmeaom/android/c/h/a;->h:I

    if-eqz v0, :cond_0

    .line 112
    new-array v0, v3, [I

    iget v1, p0, Lcom/acmeaom/android/c/h/a;->h:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 113
    iput v2, p0, Lcom/acmeaom/android/c/h/a;->h:I

    .line 114
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 116
    :cond_0
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/c/h/a;->h:I

    .line 191
    return-void
.end method

.method protected c(Lcom/acmeaom/android/c/g/a;)Lcom/acmeaom/android/c/g/b/g;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/acmeaom/android/c/g/a;->e()Lcom/acmeaom/android/c/g/b/g;

    move-result-object v0

    return-object v0
.end method
