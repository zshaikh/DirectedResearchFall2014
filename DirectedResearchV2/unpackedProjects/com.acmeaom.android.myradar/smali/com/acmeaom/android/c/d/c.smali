.class final Lcom/acmeaom/android/c/d/c;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Lcom/acmeaom/android/a/g/c;
    .locals 3

    .prologue
    .line 736
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/a/g/c;

    .line 737
    const/4 v1, 0x0

    new-instance v2, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/c;-><init>()V

    aput-object v2, v0, v1

    .line 738
    const/4 v1, 0x1

    new-instance v2, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v2}, Lcom/acmeaom/android/a/g/c;-><init>()V

    aput-object v2, v0, v1

    .line 739
    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/acmeaom/android/c/d/c;->a()[Lcom/acmeaom/android/a/g/c;

    move-result-object v0

    return-object v0
.end method
