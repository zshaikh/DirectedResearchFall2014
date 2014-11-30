.class public Lcom/acmeaom/android/b/c/g/a;
.super Lcom/acmeaom/android/b/c/g/b;
.source "ProGuard"


# instance fields
.field private b:Lcom/acmeaom/android/a/a/b/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/b/e/a/a;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/g/b;-><init>(Lcom/acmeaom/android/b/e/a/a;)V

    .line 25
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/acmeaom/android/b/e/a/c;->c_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "Can not create hurricane cone with feature: %@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/acmeaom/android/b/e/a/c;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/a;->b:Lcom/acmeaom/android/a/a/b/e;

    .line 30
    return-void
.end method


# virtual methods
.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/a;->b:Lcom/acmeaom/android/a/a/b/e;

    return-object v0
.end method
