.class public Lcom/acmeaom/android/b/c/a/d;
.super Lcom/acmeaom/android/c/g/c/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/b/a;


# instance fields
.field private a:Lcom/acmeaom/android/b/c/a/a;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/b/c/a/a;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->e()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/g/c/a;-><init>(Lcom/acmeaom/android/a/a/b/e;Z)V

    .line 28
    iput-object p1, p0, Lcom/acmeaom/android/b/c/a/d;->a:Lcom/acmeaom/android/b/c/a/a;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/i/t;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/d;->a:Lcom/acmeaom/android/b/c/a/a;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/a/f;->a(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/b/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/acmeaom/android/a/i/i;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/d;->a:Lcom/acmeaom/android/b/c/a/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->c()Lcom/acmeaom/android/a/i/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string v0, "%@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/acmeaom/android/b/c/a/d;->a:Lcom/acmeaom/android/b/c/a/a;

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/a/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
