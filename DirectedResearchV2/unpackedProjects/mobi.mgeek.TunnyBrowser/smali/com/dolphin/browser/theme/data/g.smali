.class public Lcom/dolphin/browser/theme/data/g;
.super Lcom/dolphin/browser/theme/data/u;
.source "DecoratedWallpaper.java"


# instance fields
.field protected m:Lcom/dolphin/browser/theme/data/u;

.field protected n:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/data/u;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/u;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 102
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/u;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 161
    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/theme/data/u;->a(J)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/u;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->j:Z

    .line 119
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->n:Z

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 121
    iget v1, p1, Lcom/dolphin/browser/theme/data/a;->a:I

    iput v1, p0, Lcom/dolphin/browser/theme/data/g;->a:I

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/u;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 129
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/dolphin/browser/theme/data/u;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 126
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->k:Z

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/data/a;->d(Z)V

    .line 127
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->i:Z

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 194
    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/u;->a(Z)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/u;->a(Z)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 80
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/u;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->b()I

    move-result v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/u;->d(Z)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/u;->d(Z)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 86
    if-nez v0, :cond_0

    .line 87
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/u;->f()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 56
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 62
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 96
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->i_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->e:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 141
    :goto_0
    if-eqz v0, :cond_2

    .line 144
    :cond_0
    :goto_1
    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 144
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/u;->j_()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public k()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 134
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->k()I

    move-result v0

    goto :goto_0
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 188
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/u;->k_()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->k_()Z

    move-result v0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/g;->n:Z

    return v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 155
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/theme/data/u;->s()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->s()J

    move-result-wide v0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/u;->t()Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->t()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 108
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 68
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/g;->m:Lcom/dolphin/browser/theme/data/u;

    .line 74
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
