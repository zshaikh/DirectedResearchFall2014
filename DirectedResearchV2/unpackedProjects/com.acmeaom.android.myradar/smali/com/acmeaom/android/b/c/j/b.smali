.class Lcom/acmeaom/android/b/c/j/b;
.super Lcom/acmeaom/android/c/c/f;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/j/a;

.field private b:Lcom/acmeaom/android/c/g/c/e;


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/acmeaom/android/b/c/j/c;

    iget-object v1, p0, Lcom/acmeaom/android/b/c/j/b;->a:Lcom/acmeaom/android/b/c/j/a;

    invoke-direct {v0, v1, p1, p0}, Lcom/acmeaom/android/b/c/j/c;-><init>(Lcom/acmeaom/android/b/c/j/a;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/b/c/j/b;)V

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/high16 v3, 0x42000000

    .line 92
    invoke-super {p0}, Lcom/acmeaom/android/c/c/f;->e()V

    .line 94
    new-instance v0, Lcom/acmeaom/android/c/g/c/e;

    const-string v1, "blue dot.png"

    invoke-static {v1}, Lcom/acmeaom/android/a/i/i;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/i;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v2, v3, v3}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/j/b;->b:Lcom/acmeaom/android/c/g/c/e;

    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/b;->b:Lcom/acmeaom/android/c/g/c/e;

    sget-object v1, Lcom/acmeaom/android/a/f/l;->a:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 97
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/b;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/j/b;->b:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/c/a;)V

    .line 98
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected j()Lcom/acmeaom/android/c/h/q;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic k()Lcom/acmeaom/android/c/a/d;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/b;->j()Lcom/acmeaom/android/c/h/q;

    move-result-object v0

    return-object v0
.end method
