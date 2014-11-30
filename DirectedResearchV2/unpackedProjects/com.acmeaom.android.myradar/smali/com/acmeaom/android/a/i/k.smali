.class Lcom/acmeaom/android/a/i/k;
.super Ljava/util/HashMap;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/i/j;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/i/j;)V
    .locals 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/acmeaom/android/a/i/k;->a:Lcom/acmeaom/android/a/i/j;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v0, "aaWarningRootController"

    const-class v1, Lcom/acmeaom/android/b/c/k/g;

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/i/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "aaHurricaneRootController"

    const-class v1, Lcom/acmeaom/android/b/c/g/g;

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/i/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "aaAirmetSigmetRootController"

    const-class v1, Lcom/acmeaom/android/b/c/a/f;

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/i/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method
