.class final Lc/a/a/b/o;
.super Lc/a/a/c/b;
.source "GJEraDateTimeField.java"


# instance fields
.field private final a:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/b/d;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lc/a/a/d;->w()Lc/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/c/b;-><init>(Lc/a/a/d;)V

    .line 48
    iput-object p1, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    .line 49
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/p;->a()I

    move-result v0

    return v0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .prologue
    .line 93
    invoke-static {p4}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lc/a/a/b/p;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/o;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p2}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/b/p;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JI)J
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lc/a/a/c/g;->a(Lc/a/a/c;III)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->a(J)I

    move-result v0

    .line 84
    if-eq v0, p3, :cond_0

    .line 85
    iget-object v0, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->a(J)I

    move-result v0

    .line 86
    iget-object v1, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lc/a/a/b/d;->f(JI)J

    move-result-wide p1

    .line 88
    :cond_0
    return-wide p1
.end method

.method public d(J)J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->a(J)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 98
    iget-object v0, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc/a/a/b/d;->f(JI)J

    move-result-wide v0

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public d()Lc/a/a/l;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lc/a/a/m;->l()Lc/a/a/m;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/c/r;->a(Lc/a/a/m;)Lc/a/a/c/r;

    move-result-object v0

    return-object v0
.end method

.method public e(J)J
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->a(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lc/a/a/b/o;->a:Lc/a/a/b/d;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lc/a/a/b/d;->f(JI)J

    move-result-wide v0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(J)J
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public g(J)J
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public h(J)J
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lc/a/a/b/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method
