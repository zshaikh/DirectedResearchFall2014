.class final Lc/a/a/b/l;
.super Lc/a/a/c/h;
.source "BasicWeekyearDateTimeField.java"


# instance fields
.field private final a:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/b/d;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lc/a/a/d;->p()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/d;->T()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/h;-><init>(Lc/a/a/d;J)V

    .line 46
    iput-object p1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    .line 47
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->e(J)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 1

    .prologue
    .line 73
    if-nez p3, :cond_0

    .line 76
    :goto_0
    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/l;->a(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/l;->b(JI)J

    move-result-wide p1

    goto :goto_0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 80
    invoke-static {p3, p4}, Lc/a/a/c/g;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/l;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JI)J
    .locals 8

    .prologue
    const-wide/32 v6, 0x240c8400

    .line 129
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1}, Lc/a/a/b/d;->Q()I

    move-result v1

    iget-object v2, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v2}, Lc/a/a/b/d;->R()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/l;->a(J)I

    move-result v0

    .line 135
    if-ne v0, p3, :cond_0

    .line 205
    :goto_0
    return-wide p1

    .line 141
    :cond_0
    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2}, Lc/a/a/b/d;->g(J)I

    move-result v3

    .line 145
    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1, v0}, Lc/a/a/b/d;->b(I)I

    move-result v1

    .line 146
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p3}, Lc/a/a/b/d;->b(I)I

    move-result v0

    .line 147
    if-ge v0, v1, :cond_2

    .line 155
    :goto_1
    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2}, Lc/a/a/b/d;->f(J)I

    move-result v1

    .line 156
    if-le v1, v0, :cond_4

    .line 169
    :goto_2
    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2, p3}, Lc/a/a/b/d;->f(JI)J

    move-result-wide v1

    .line 174
    invoke-virtual {p0, v1, v2}, Lc/a/a/b/l;->a(J)I

    move-result v4

    .line 180
    if-ge v4, p3, :cond_3

    .line 181
    add-long/2addr v1, v6

    .line 190
    :cond_1
    :goto_3
    iget-object v4, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v4, v1, v2}, Lc/a/a/b/d;->f(J)I

    move-result v4

    .line 192
    sub-int/2addr v0, v4

    int-to-long v4, v0

    mul-long/2addr v4, v6

    add-long v0, v1, v4

    .line 201
    iget-object v2, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v2}, Lc/a/a/b/d;->t()Lc/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lc/a/a/c;->b(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 147
    goto :goto_1

    .line 182
    :cond_3
    if-le v4, p3, :cond_1

    .line 183
    sub-long/2addr v1, v6

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public b(J)Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    iget-object v1, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v1, p1, p2}, Lc/a/a/b/d;->e(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/d;->b(I)I

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(JJ)J
    .locals 9

    .prologue
    .line 97
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 98
    invoke-virtual {p0, p3, p4, p1, p2}, Lc/a/a/b/l;->b(JJ)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 116
    :goto_0
    return-wide v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/l;->a(J)I

    move-result v3

    .line 102
    invoke-virtual {p0, p3, p4}, Lc/a/a/b/l;->a(J)I

    move-result v4

    .line 104
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/l;->i(J)J

    move-result-wide v5

    .line 105
    invoke-virtual {p0, p3, p4}, Lc/a/a/b/l;->i(J)J

    move-result-wide v0

    .line 108
    const-wide v7, 0x7528ad000L

    cmp-long v2, v0, v7

    if-ltz v2, :cond_2

    iget-object v2, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v2, v3}, Lc/a/a/b/d;->b(I)I

    move-result v2

    const/16 v7, 0x34

    if-gt v2, v7, :cond_2

    .line 109
    const-wide/32 v7, 0x240c8400

    sub-long/2addr v0, v7

    move-wide v1, v0

    .line 112
    :goto_1
    sub-int v0, v3, v4

    .line 113
    cmp-long v1, v5, v1

    if-gez v1, :cond_1

    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 116
    :cond_1
    int-to-long v0, v0

    goto :goto_0

    :cond_2
    move-wide v1, v0

    goto :goto_1
.end method

.method public d(J)J
    .locals 7

    .prologue
    .line 235
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->x()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->d(J)J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v2, v0, v1}, Lc/a/a/b/d;->f(J)I

    move-result v2

    .line 237
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 238
    const-wide/32 v3, 0x240c8400

    add-int/lit8 v2, v2, -0x1

    int-to-long v5, v2

    mul-long v2, v3, v5

    sub-long/2addr v0, v2

    .line 240
    :cond_0
    return-wide v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lc/a/a/l;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->w()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->Q()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lc/a/a/b/l;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->R()I

    move-result v0

    return v0
.end method

.method public i(J)J
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/l;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method