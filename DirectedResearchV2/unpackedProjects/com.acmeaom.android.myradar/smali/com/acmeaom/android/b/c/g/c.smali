.class public Lcom/acmeaom/android/b/c/g/c;
.super Lcom/acmeaom/android/c/g/c/e;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/b/a;


# instance fields
.field private a:Lcom/acmeaom/android/b/c/g/d;

.field private b:Lcom/acmeaom/android/a/i/i;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/i/t;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/c;->a:Lcom/acmeaom/android/b/c/g/d;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/g/g;->a(Lcom/acmeaom/android/b/c/g/d;)Lcom/acmeaom/android/b/c/g/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/i/i;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/acmeaom/android/b/c/g/c;->b:Lcom/acmeaom/android/a/i/i;

    .line 70
    return-void
.end method

.method public a(Lcom/acmeaom/android/b/c/g/d;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/acmeaom/android/b/c/g/c;->a:Lcom/acmeaom/android/b/c/g/d;

    .line 62
    return-void
.end method

.method public b()Lcom/acmeaom/android/a/i/i;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/c;->b:Lcom/acmeaom/android/a/i/i;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/c;->a:Lcom/acmeaom/android/b/c/g/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->e()Ljava/lang/String;

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
