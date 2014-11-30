.class Lc/a/a/b/m;
.super Lc/a/a/c/h;
.source "BasicYearDateTimeField.java"


# instance fields
.field protected final a:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/b/d;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lc/a/a/d;->s()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/d;->T()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/h;-><init>(Lc/a/a/d;J)V

    .line 47
    iput-object p1, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    .line 48
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 1

    .prologue
    .line 59
    if-nez p3, :cond_0

    .line 64
    :goto_0
    return-wide p1

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/m;->a(J)I

    move-result v0

    .line 63
    invoke-static {v0, p3}, Lc/a/a/c/g;->a(II)I

    move-result v0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/m;->b(JI)J

    move-result-wide p1

    goto :goto_0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 68
    invoke-static {p3, p4}, Lc/a/a/c/g;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/m;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JI)J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->Q()I

    move-result v0

    iget-object v1, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v1}, Lc/a/a/b/d;->R()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 85
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/b/d;->f(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {p0, p1, p2}, Lc/a/a/b/m;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/d;->e(I)Z

    move-result v0

    return v0
.end method

.method public c(JJ)J
    .locals 2

    .prologue
    .line 89
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 90
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p3, p4, p1, p2}, Lc/a/a/b/d;->a(JJ)J

    move-result-wide v0

    neg-long v0, v0

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/b/d;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public d(J)J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {p0, p1, p2}, Lc/a/a/b/m;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/d;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)J
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/m;->a(J)I

    move-result v0

    .line 129
    iget-object v1, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v1, v0}, Lc/a/a/b/d;->d(I)J

    move-result-wide v1

    .line 130
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lc/a/a/b/d;->d(I)J

    move-result-wide p1

    .line 134
    :cond_0
    return-wide p1
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lc/a/a/l;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->s()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->Q()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc/a/a/b/m;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->R()I

    move-result v0

    return v0
.end method

.method public i(J)J
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/m;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method
