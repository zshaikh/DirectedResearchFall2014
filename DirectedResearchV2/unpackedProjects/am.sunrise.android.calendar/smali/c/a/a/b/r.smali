.class final Lc/a/a/b/r;
.super Lc/a/a/c/d;
.source "GJYearOfEraDateTimeField.java"


# instance fields
.field private final a:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/c;Lc/a/a/b/d;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lc/a/a/d;->t()Lc/a/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/a/a/c/d;-><init>(Lc/a/a/c;Lc/a/a/d;)V

    .line 43
    iput-object p2, p0, Lc/a/a/b/r;->a:Lc/a/a/b/d;

    .line 44
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->a(J)I

    move-result v0

    .line 53
    if-gtz v0, :cond_0

    .line 54
    rsub-int/lit8 v0, v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method public a(JI)J
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/c;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c;->b(JJ)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0}, Lc/a/a/b/r;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 93
    iget-object v0, p0, Lc/a/a/b/r;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 94
    rsub-int/lit8 p3, p3, 0x1

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc/a/a/c/d;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(JJ)J
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/a/a/c;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)J
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)J
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc/a/a/b/r;->a:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->J()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public i(J)J
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lc/a/a/b/r;->i()Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
