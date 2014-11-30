.class final Lc/a/a/b/g;
.super Lc/a/a/c/m;
.source "BasicDayOfMonthDateTimeField.java"


# instance fields
.field private final b:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/b/d;Lc/a/a/l;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lc/a/a/d;->m()Lc/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/a/a/c/m;-><init>(Lc/a/a/d;Lc/a/a/l;)V

    .line 43
    iput-object p1, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    .line 44
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->c(J)I

    move-result v0

    return v0
.end method

.method public c(J)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->i(J)I

    move-result v0

    return v0
.end method

.method protected c(JI)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/b/d;->e(JI)I

    move-result v0

    return v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->B()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lc/a/a/b/g;->b:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->P()I

    move-result v0

    return v0
.end method
