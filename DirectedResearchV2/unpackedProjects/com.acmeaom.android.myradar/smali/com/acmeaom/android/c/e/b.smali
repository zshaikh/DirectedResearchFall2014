.class Lcom/acmeaom/android/c/e/b;
.super Ljava/util/HashMap;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/a/e/a;

.field final synthetic b:Lcom/acmeaom/android/a/i/d;

.field final synthetic c:Lcom/acmeaom/android/c/e/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/e/a;Lcom/acmeaom/android/a/a/e/a;Lcom/acmeaom/android/a/i/d;)V
    .locals 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/acmeaom/android/c/e/b;->c:Lcom/acmeaom/android/c/e/a;

    iput-object p2, p0, Lcom/acmeaom/android/c/e/b;->a:Lcom/acmeaom/android/a/a/e/a;

    iput-object p3, p0, Lcom/acmeaom/android/c/e/b;->b:Lcom/acmeaom/android/a/i/d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v0, "kCTFontAttributeName"

    iget-object v1, p0, Lcom/acmeaom/android/c/e/b;->a:Lcom/acmeaom/android/a/a/e/a;

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/c/e/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "kCTForegroundColorAttributeName"

    iget-object v1, p0, Lcom/acmeaom/android/c/e/b;->b:Lcom/acmeaom/android/a/i/d;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/c/e/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "kCTLigatureAttributeName"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/c/e/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
