.class final Lcom/acmeaom/android/a/a/a/c;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/acmeaom/android/a/a/a/b;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-static {}, Lcom/acmeaom/android/a/a/a/b;->e()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/a/b;-><init>(Lcom/acmeaom/android/a/a/a/b;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/a/c;->a()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method
