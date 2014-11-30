.class public Lcom/dolphin/browser/theme/data/f;
.super Lcom/dolphin/browser/theme/data/s;
.source "DecoratedTheme.java"


# instance fields
.field protected m:Lcom/dolphin/browser/theme/data/s;

.field protected n:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/s;-><init>()V

    .line 39
    iput p1, p0, Lcom/dolphin/browser/theme/data/f;->a:I

    .line 40
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/f;->b:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/f;->e:Ljava/lang/ref/SoftReference;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/theme/data/s;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/s;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 35
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->n:Z

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 111
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/s;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object p1

    goto :goto_0
.end method

.method public a()Lcom/dolphin/browser/theme/data/b;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 99
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 176
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/theme/data/s;->a(J)V

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/s;->a(J)V

    .line 180
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->j:Z

    .line 129
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->n:Z

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 131
    iget v1, p1, Lcom/dolphin/browser/theme/data/a;->a:I

    iput v1, p0, Lcom/dolphin/browser/theme/data/f;->a:I

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/s;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 139
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/dolphin/browser/theme/data/s;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 136
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->k:Z

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/data/a;->d(Z)V

    .line 137
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->i:Z

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 208
    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/s;->a(Z)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/s;->a(Z)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 71
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->b()I

    move-result v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/s;->d(Z)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/s;->d(Z)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->f()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 47
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 53
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 87
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->i_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->e:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 156
    :goto_0
    if-eqz v0, :cond_1

    .line 159
    :goto_1
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 159
    :cond_1
    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/s;->j_()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public k()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 149
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->k()I

    move-result v0

    goto :goto_0
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 202
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->k_()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->k_()Z

    move-result v0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/f;->n:Z

    return v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 170
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->s()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->s()J

    move-result-wide v0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    if-nez v0, :cond_0

    .line 185
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->t()Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->t()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 117
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 59
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 65
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 93
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->x()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->x()I

    move-result v0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/f;->m:Lcom/dolphin/browser/theme/data/s;

    .line 105
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/s;->y()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->y()I

    move-result v0

    goto :goto_0
.end method
