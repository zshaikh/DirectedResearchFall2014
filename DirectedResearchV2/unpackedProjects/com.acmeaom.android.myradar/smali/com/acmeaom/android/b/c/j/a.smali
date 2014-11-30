.class public Lcom/acmeaom/android/b/c/j/a;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/b/c/j/b;


# direct methods
.method static synthetic a(Lcom/acmeaom/android/b/c/j/a;)Lcom/acmeaom/android/c/d/e;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->c:Lcom/acmeaom/android/c/d/e;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/a;->g()V

    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->b_()V

    .line 55
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->b_()V

    .line 56
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->g()V

    .line 68
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->e()V

    .line 69
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->g()V

    .line 73
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->i()V

    .line 49
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V

    .line 50
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/a;->a:Lcom/acmeaom/android/b/c/j/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/b;->m()V

    .line 77
    return-void
.end method
