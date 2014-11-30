.class public abstract Lcom/acmeaom/android/c/c/i;
.super Lcom/acmeaom/android/c/c/f;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/ae;

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/acmeaom/android/c/c/f;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lcom/acmeaom/android/c/h/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/acmeaom/android/c/h/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/c/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Lcom/acmeaom/android/a/a/b/ae;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/acmeaom/android/c/c/i;->a:Lcom/acmeaom/android/a/a/b/ae;

    .line 51
    return-void
.end method

.method protected b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;
    .locals 6

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/c/i;->a(Lcom/acmeaom/android/c/h/m;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/i;->j()Lcom/acmeaom/android/c/h/q;

    move-result-object v0

    iget-object v3, p0, Lcom/acmeaom/android/c/c/i;->a:Lcom/acmeaom/android/a/a/b/ae;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/acmeaom/android/c/h/q;->b(Lcom/acmeaom/android/c/h/m;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/ae;Lcom/acmeaom/android/c/c/i;Z)Lcom/acmeaom/android/c/h/n;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/i;->q()I

    move-result v1

    iget v3, p1, Lcom/acmeaom/android/c/h/m;->b:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/h/n;->a(I)V

    .line 33
    iget-boolean v1, p0, Lcom/acmeaom/android/c/c/i;->b:Z

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/h/n;->b(Z)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/acmeaom/android/c/h/n;->a(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/acmeaom/android/c/c/i;->b:Z

    .line 59
    return-void
.end method

.method protected synthetic c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/c/i;->b(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method protected j()Lcom/acmeaom/android/c/h/q;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/acmeaom/android/c/h/n;->g:Lcom/acmeaom/android/c/h/q;

    return-object v0
.end method

.method protected synthetic k()Lcom/acmeaom/android/c/a/d;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/i;->j()Lcom/acmeaom/android/c/h/q;

    move-result-object v0

    return-object v0
.end method
