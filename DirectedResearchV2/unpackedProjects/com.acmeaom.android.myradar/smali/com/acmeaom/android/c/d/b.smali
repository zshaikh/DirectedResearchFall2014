.class final Lcom/acmeaom/android/c/d/b;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Lcom/acmeaom/android/a/g/m;
    .locals 3

    .prologue
    .line 680
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/a/g/m;

    .line 681
    const/4 v1, 0x0

    new-instance v2, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/m;-><init>()V

    aput-object v2, v0, v1

    .line 682
    const/4 v1, 0x1

    new-instance v2, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/m;-><init>()V

    aput-object v2, v0, v1

    .line 683
    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/b;->a()[Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method
